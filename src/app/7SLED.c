#include "7SLED.h"
#include "define.h"
#include <avr/io.h>
#include <util/delay.h>

// Common Cathode (CC) 7-segment display uses Active-HIGH segment data:
// 1 = segment ON (5V), 0 = segment OFF (0V).
static const uint8_t SEG_TABLE[16] = {
    0x3F, // 0: a, b, c, d, e, f
    0x06, // 1: b, c
    0x5B, // 2: a, b, d, e, g
    0x4F, // 3: a, b, c, d, g
    0x66, // 4: b, c, f, g
    0x6D, // 5: a, c, d, f, g
    0x7D, // 6: a, c, d, e, f, g
    0x07, // 7: a, b, c
    0x7F, // 8: all segments on
    0x6F, // 9: a, b, c, d, f, g
    0x77, // A
    0x7C, // b
    0x39, // C
    0x5E, // d
    0x79, // E
    0x71  // F
};

#define SEG_BLANK 0x00  // All segments OFF for Common Cathode (0V)

// Display buffer initialized to default: "102026"
// [0] = LED 1 (leftmost, Q0) ... [5] = LED 6 (rightmost, Q5)
static uint8_t display_buffer[SEG7_NUM_DIGITS] = {1, 0, 2, 0, 2, 6};
static uint8_t current_digit = 0;
static uint8_t dp_mask = 0x00;

#include <avr/interrupt.h>
#include "clock.h"

static uint16_t timer0_tick_count = 0;

void seg7_init(void) {
    // Hardware memory interface writes to CSEL3 and CSEL4:
    LED_7CONTROL = 0x00;        // Turn off all digit transistors
    LED_7DATA    = SEG_BLANK;   // Turn off all segment lines

    // Configure Timer0 for 2.0 ms CTC interrupt (500 Hz):
    // Prescaler 256 (16MHz / 256 = 62.5 kHz) -> 125 counts (OCR0 = 124) = 2.0 ms
    // Refresh rate for 6 digits = 500 Hz / 6 = 83.3 Hz (clean, zero flicker)
    TCCR0 = (1 << WGM01) | (1 << CS02) | (1 << CS01);
    TCNT0 = 0;
    OCR0  = 124;
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
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
        display_buffer[i] = digits[i];
    }
}

void seg7_set_number(uint32_t num) {
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
        display_buffer[i] = num % 10;
        num /= 10;
    }
}

void seg7_set_dp_mask(uint8_t mask) {
    dp_mask = mask;
}

void seg7_update(void) {
    // 1. Blanking: Turn off all transistors first (via CSEL3) to prevent ghosting
    LED_7CONTROL = 0x00;

    // 2. Load the segment pattern for the active digit (via CSEL4)
    uint8_t val = display_buffer[current_digit];
    uint8_t seg_pattern = (val < 16) ? SEG_TABLE[val] : SEG_BLANK;

    // 2b. Turn on Decimal Point if enabled for this digit
    if (dp_mask & (1 << current_digit)) {
        seg_pattern |= 0x80; // Bit 7 is DP (driven through R81 / Q7)
    }

    LED_7DATA = seg_pattern;

    // 3. Enable the transistor for the current position (via CSEL3):
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
