#include "7SLED.h"
#include "define.h"
#include <avr/io.h>
#include <util/atomic.h>

// Common-cathode segment outputs are active HIGH.
// Use the current segment map in define.h (dp,g,f,e,d,c,a,b).

#define SEG_BLANK 0x00  // All segments OFF for Common Cathode (0V)

// Keep the physical display blank until a menu function supplies digits.
// [0] = leftmost Q7 ... [7] = rightmost Q0.
static volatile uint8_t display_buffer[SEG7_NUM_DIGITS] = {SEG7_BLANK, SEG7_BLANK, SEG7_BLANK, SEG7_BLANK, SEG7_BLANK, SEG7_BLANK, SEG7_BLANK, SEG7_BLANK};
static uint8_t current_digit = 0;
static volatile uint8_t dp_mask = 0x00;

#include <avr/interrupt.h>
#ifdef SEG7_ENABLE_CLOCK
#include "clock.h"
static uint16_t timer0_tick_count = 0;
#endif

void seg7_init(void) {
    // Synchronous Timer0 leaves PG3/PG4 available for LCD E and RS.
    ASSR &= ~(1 << AS0);
    current_digit = 0;
#ifdef SEG7_ENABLE_CLOCK
    timer0_tick_count = 0;
#endif
    dp_mask = 0;
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
        display_buffer[i] = SEG7_BLANK;
    }
    // Hardware memory interface writes to CSEL3 and CSEL4:
    LED_7CONTROL = 0x00;        // Turn off all digit transistors
    LED_7DATA    = SEG_BLANK;   // Turn off all segment lines

    // Timer0 /64, 250 counts at 16 MHz: 1 ms slots, 125 Hz per digit.
    TCCR0 = (1 << WGM01) | (1 << CS02);
    TCNT0 = 0;
    OCR0 = (F_CPU / 64UL / 1000UL) - 1;
    TIFR = (1 << OCF0); // Discard any pending compare before enabling it.
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
    sei();                      // Enable global interrupts
}

ISR(TIMER0_COMP_vect) {
    seg7_update();

#ifdef SEG7_ENABLE_CLOCK
    // Legacy clock diagnostic only; the main application just scans digits.
    // 1000 interrupts at 1 ms supply the only one-second clock tick.
    timer0_tick_count++;
    if (timer0_tick_count >= 1000) {
        timer0_tick_count = 0;
        clock_tick_1s();
    }
#endif
}

void seg7_set_digit(uint8_t pos, uint8_t value) {
    if (pos < SEG7_NUM_DIGITS) {
        display_buffer[pos] = value;
    }
}

void seg7_set_array(const uint8_t digits[SEG7_NUM_DIGITS]) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
            display_buffer[i] = digits[i];
        }
    }
}

void seg7_set_number(uint32_t num) {
    uint8_t digits[SEG7_NUM_DIGITS];
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
        digits[i] = num % 10;
        num /= 10;
    }
    seg7_set_array(digits);
}

void seg7_set_dp_mask(uint8_t mask) {
    dp_mask = mask;
}

void seg7_update(void) {
    // 1. Blanking: Turn off all transistors first (via CSEL4) to prevent ghosting
    LED_7CONTROL = 0x00;

    // 2. Load the segment pattern for the active digit (via CSEL3)
    uint8_t val = display_buffer[current_digit];
    uint8_t seg_pattern = (val < 16) ? SEGMENT_MAP[val] : SEG_BLANK;

    // 2b. Turn on Decimal Point if enabled for this digit
    if (val < 16 && (dp_mask & (1 << current_digit))) {
        seg_pattern |= SEG7_DP_MASK; // Decimal point is segment-data bit 0.
    }

    LED_7DATA = seg_pattern;

    // Physical order from left to right: Q7 Q6 Q5 Q4 Q3 Q2 Q1 Q0.
    LED_7CONTROL = (uint8_t)(0x80u >> current_digit);

    // Advance across all eight logical positions.
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
}

void seg7_set_decimal(uint32_t num, uint8_t width)
{
    if (width == 0 || width > SEG7_NUM_DIGITS) return;
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
    for (uint8_t i = 0; i < width; i++) {
        digits[SEG7_NUM_DIGITS - 1 - i] = num % 10;
        num /= 10;
    }
    seg7_set_array(digits);
}


// Device actions exposed to the linked-list menu.
#include "lcd.h"
#include "buttons.h"
static uint16_t action_value;
static int8_t action_direction;

static void action_seg_draw_value(void)
{
    uint16_t remaining = action_value;
    char line[] = "VALUE: 0000";
    for (uint8_t i = 0; i < 4; i++) {
        line[10 - i] = '0' + remaining % 10;
        remaining /= 10;
    }
    seg7_set_decimal(action_value, 4);
    lcd_write_line(1, line);
}

static void action_seg_start(const char *title, uint16_t value, int8_t direction)
{
    action_value = value;
    action_direction = direction;
    seg7_set_dp_mask(0);
    lcd_clear();
    lcd_write_line(0, title);
    action_seg_draw_value();
}

void action_seg_clear(void) { action_seg_start("1. DISPLAY 0000", 0, 0); }
void action_seg_set(void) { action_seg_start("2. DISPLAY 9999", 9999, 0); }
void action_seg_increase(void) { action_seg_start("3. INCREASE", 0, 1); }
void action_seg_decrease(void) { action_seg_start("4. DECREASE", 9999, -1); }

void action_seg_input(uint8_t pressed)
{
    if (action_direction > 0 && (pressed & BTN_BIT_UP) && action_value < 9999)
        action_value++;
    else if (action_direction < 0 && (pressed & BTN_BIT_DOWN) && action_value > 0)
        action_value--;
    else return;
    action_seg_draw_value();
}
