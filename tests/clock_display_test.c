// Exercise the real clock and scanner with simulated registers, not timing.
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include "define.h"
uint8_t ASSR, TCCR0, TCNT0, OCR0, TIFR, TIMSK;
static uint8_t digit_control, segment_data;
#undef LED_7CONTROL
#undef LED_7DATA
#define LED_7CONTROL digit_control
#define LED_7DATA segment_data
#include "../src/app/7SLED.c"
#include "../src/app/clock.c"

static void seconds(unsigned n) {
    while (n--) {
        for (unsigned tick = 0; tick < 500; tick++) TIMER0_COMP_vect();
    }
}
static void expect_time(uint8_t h, uint8_t m, uint8_t s) {
    ClockTime_t actual;
    clock_get_time(&actual);
    assert(actual.hours == h && actual.minutes == m && actual.seconds == s);
}
int main(void) {
    clock_init();
    seg7_init();
    assert(OCR0 == 124 && digit_control == 0 && segment_data == 0);
    for (unsigned i = 0; i < 6; i++) assert(display_buffer[i] == SEG7_BLANK);
    for (unsigned i = 0; i < 499; i++) TIMER0_COMP_vect();
    expect_time(12, 0, 0);
    TIMER0_COMP_vect(); expect_time(12, 0, 1);
    seconds(59); expect_time(12, 1, 0);
    clock_set_time(23, 59, 59); seconds(1); expect_time(0, 0, 0);
    clock_pause(); seconds(2); expect_time(0, 0, 0);
    clock_start(); seconds(1); expect_time(0, 0, 1);
    clock_set_time(24, 60, 60); expect_time(0, 0, 0);
    clock_set_time(12, 34, 56);
    clock_update_display();
    const uint8_t expected_digits[6] = {1, 2, 3, 4, 5, 6};
    for (unsigned i = 0; i < 6; i++) assert(display_buffer[i] == expected_digits[i]);
    assert(dp_mask == ((1 << 1) | (1 << 3)));
    // Physical expected bytes for 12.34.56, independent of the driver table.
    const uint8_t expected_patterns[6] = {0x60, 0xDB, 0xF2, 0x67, 0xB6, 0xBE};
    current_digit = 0;
    for (unsigned i = 0; i < 6; i++) {
        seg7_update();
        assert(digit_control == (1 << i));
        assert(segment_data == expected_patterns[i]);
    }
    assert(current_digit == 0);
    seg7_set_digit(1, SEG7_BLANK);
    current_digit = 1; seg7_update();
    assert(segment_data == 0); // Selected blinking digit includes its DP.
    // Derive all hexadecimal patterns from canonical a..g glyphs and the
    // measured physical bit mapping, rather than comparing the table to itself.
    const uint8_t logical_glyphs[16] = {
        0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,
        0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71
    };
    const uint8_t physical_bits[7] = {7,6,5,4,3,2,1}; // a,b,c,d,e,f,g
    for (unsigned glyph = 0; glyph < 16; glyph++) {
        uint8_t expected = 0;
        for (unsigned seg = 0; seg < 7; seg++) {
            if (logical_glyphs[glyph] & (1 << seg)) expected |= (1 << physical_bits[seg]);
        }
        assert(SEGMENT_MAP[glyph] == expected);
        assert((SEGMENT_MAP[glyph] & 1) == 0);
    }
    seg7_set_number(888888);
    for (unsigned i = 0; i < 6; i++) assert(display_buffer[i] == 8);
    puts("PASS: clock tick/rollover/pause, HH.MM.SS digits, scanning, blank digit, mode 4");
}
