// Real shared-latch relay and Timer2 logic with a simulated CSEL5 register.
#include <assert.h>
#include <stdio.h>
#include "define.h"
uint8_t TCCR2, TCNT2, OCR2, TIFR, TIMSK;
static uint8_t latch_levels;
#undef RELAYS
#define RELAYS latch_levels
#include "../src/app/relay.c"

static void expect_state(uint8_t logical) {
    assert(relay_get_state() == logical);
    assert((latch_levels & RELAY_MASK) == ((logical ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK));
    assert((latch_levels & 0xE0) == 0xE0);
}
// Device action LCD calls are outside this driver's timing tests.
void lcd_clear(void) {}
void lcd_write_line(uint8_t row, const char *text) { (void)row; (void)text; }

int main(void) {
    relay_init();
    expect_state(0);
    assert(!(latch_levels & BUZZER_BIT)); // I/O LOW while relay removes power.
    assert(!(TIMSK & (1 << OCIE2)) && !relay_buzzer_is_running());
    assert(OCR2 == 249); // 1 ms settling/rest divider.
    relay_on(0); expect_state(1);
    assert(TIMSK & (1 << OCIE2));
    for (unsigned n = 1; n < BUZZER_SETTLE_TICKS; n++) {
        TIMER2_COMP_vect();
        assert(!(latch_levels & BUZZER_BIT) && !relay_buzzer_is_running());
    }
    TIMER2_COMP_vect();
    assert(relay_buzzer_is_running() && (latch_levels & BUZZER_BIT));
    uint8_t previous = latch_levels;
    TIMER2_COMP_vect(); assert(latch_levels == (previous ^ BUZZER_BIT));
    // Updates to other relays preserve the current tone phase and running timer.
    for (uint8_t i = 1; i < 4; i++) {
        uint8_t phase = latch_levels & BUZZER_BIT;
        relay_on(i); expect_state((1u << (i + 1)) - 1);
        assert((latch_levels & BUZZER_BIT) == phase && relay_buzzer_is_running());
        previous = latch_levels;
        TIMER2_COMP_vect(); assert(latch_levels == (previous ^ BUZZER_BIT));
    }
    relay_off(0); expect_state(14);
    assert(!(TIMSK & (1 << OCIE2)) && !relay_buzzer_is_running());
    assert(!(latch_levels & BUZZER_BIT));
    previous = latch_levels; TIMER2_COMP_vect(); assert(latch_levels == previous);
    relay_toggle(1); expect_state(12);
    relay_set_raw(0xFF); expect_state(15);
    relay_all_off(); expect_state(0);
    assert(!relay_buzzer_is_running() && !(latch_levels & BUZZER_BIT));
    relay_mode_0_2(); expect_state(5);
    relay_mode_1_3(); expect_state(10); assert(!relay_buzzer_is_running());
    relay_all_on(); expect_state(15);
    relay_init(); expect_state(0);
    previous = latch_levels;
    relay_on(4); relay_off(255); relay_toggle(4);
    assert(latch_levels == previous);
    // Simulate a future reserved output LOW and ensure both paths retain it.
    output_state &= (uint8_t)~(1u << 6);
    relay_on(0);
    for (unsigned n = 0; n < BUZZER_SETTLE_TICKS + 20; n++) TIMER2_COMP_vect();
    assert(!(latch_levels & (1u << 6)));
    relay_all_off(); assert(!(latch_levels & (1u << 6)));
    // Check a whole melody cycle, timing, silence, and stable relay outputs.
    relay_init();
    relay_all_on();
    for (unsigned n = 0; n < BUZZER_SETTLE_TICKS; n++) TIMER2_COMP_vect();
    unsigned long elapsed_counts = 0;
    uint8_t first_pitch = OCR2;
    unsigned pitch_changes = 0;
    for (unsigned step = 0; step < ALARM_STEP_COUNT; step++) {
        assert(alarm_step == step);
        unsigned cycles = alarm_cycles;
        if (alarm_pattern[step].tone && OCR2 != first_pitch) pitch_changes++;
        for (unsigned n = 0; n < cycles; n++) {
            uint8_t before = latch_levels;
            elapsed_counts += (unsigned)OCR2 + 1;
            TIMER2_COMP_vect();
            expect_state(15);
            assert(relay_buzzer_is_running());
            if (n + 1 < cycles) {
                if (alarm_pattern[step].tone)
                    assert(latch_levels == (before ^ BUZZER_BIT));
                else
                    assert(latch_levels & BUZZER_BIT);
            }
        }
    }
    assert(pitch_changes == 6 && alarm_step == 0);
    assert(elapsed_counts > 709000UL && elapsed_counts < 711000UL);
    uint16_t remaining = alarm_cycles;
    relay_on(0);
    assert(alarm_cycles == remaining && buzzer_settle_ticks == 0);
    relay_off(0);
    assert(!relay_buzzer_is_running() && !(latch_levels & BUZZER_BIT));
    relay_on(0);
    assert(buzzer_settle_ticks == BUZZER_SETTLE_TICKS && alarm_step == 0);
    for (unsigned n = 0; n < BUZZER_SETTLE_TICKS; n++) TIMER2_COMP_vect();
    while (alarm_step == 0) TIMER2_COMP_vect();
    assert(!alarm_pattern[alarm_step].tone && (latch_levels & BUZZER_BIT));
    relay_all_off();
    expect_state(0);
    assert(!(TIMSK & (1 << OCIE2)) && !(latch_levels & BUZZER_BIT));
    puts("PASS: melody pitches, gaps, cycle timing, restart, relay preservation and all-off");
}
