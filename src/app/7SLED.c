#include "7SLED.h"
#include "define.h"
#include <avr/io.h>
#include <util/atomic.h>

// Common-cathode segment outputs are active HIGH.
// Use the board-confirmed segment map in define.h (dp,g,f,e,d,c,b,a).

#define SEG_BLANK 0x00  // All segments OFF for Common Cathode (0V)

// Keep the physical display blank until a menu function supplies digits.
// [0] = LED 1 (leftmost, Q0) ... [5] = LED 6 (rightmost, Q5)
static volatile uint8_t display_buffer[SEG7_NUM_DIGITS] = {SEG7_BLANK, SEG7_BLANK, SEG7_BLANK, SEG7_BLANK, SEG7_BLANK, SEG7_BLANK};
static uint8_t current_digit = 0;
static volatile uint8_t dp_mask = 0x00;

#include <avr/interrupt.h>
#include "clock.h"

static uint16_t timer0_tick_count = 0;

void seg7_init(void) {
    // Synchronous Timer0 leaves PG3/PG4 available for LCD E and RS.
    ASSR &= ~(1 << AS0);
    current_digit = 0;
    timer0_tick_count = 0;
    dp_mask = 0;
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
        display_buffer[i] = SEG7_BLANK;
    }
    // Hardware memory interface writes to CSEL3 and CSEL4:
    LED_7CONTROL = 0x00;        // Turn off all digit transistors
    LED_7DATA    = SEG_BLANK;   // Turn off all segment lines

    // Configure Timer0 for 2.0 ms CTC interrupt (500 Hz):
    // Prescaler 256 (16MHz / 256 = 62.5 kHz) -> 125 counts (OCR0 = 124) = 2.0 ms
    // Refresh rate for 6 digits = 500 Hz / 6 = 83.3 Hz (clean, zero flicker)
    TCCR0 = (1 << WGM01) | (1 << CS02) | (1 << CS01);
    TCNT0 = 0;
    OCR0  = (F_CPU / 256UL / 500UL) - 1;
    TIFR = (1 << OCF0); // Discard any pending compare before enabling it.
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
    sei();                      // Enable global interrupts
}

ISR(TIMER0_COMP_vect) {
    seg7_update();

    // 500 interrupts @ 2.0 ms = 1000 ms (exact 1 second tick for clock)
    timer0_tick_count++;
    if (timer0_tick_count >= 500) {
        timer0_tick_count = 0;
        clock_tick_1s();
    }
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

    // 3. Enable the transistor for the current position (via CSEL4):
    //    current_digit 0 (LED 1, leftmost)  -> Q0 (pin 19) -> bit 0 (1 << 0) = 0x01
    //    current_digit 1 (LED 2)            -> Q1 (pin 18) -> bit 1 (1 << 1) = 0x02
    //    current_digit 2 (LED 3)            -> Q2 (pin 17) -> bit 2 (1 << 2) = 0x04
    //    current_digit 3 (LED 4)            -> Q3 (pin 16) -> bit 3 (1 << 3) = 0x08
    //    current_digit 4 (LED 5)            -> Q4 (pin 15) -> bit 4 (1 << 4) = 0x10
    //    current_digit 5 (LED 6, rightmost) -> Q5 (pin 14) -> bit 5 (1 << 5) = 0x20
    LED_7CONTROL = (1 << current_digit);

    // 4. Advance to next digit position (0 to 5)
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
}
