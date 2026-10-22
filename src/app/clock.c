#include "clock.h"
#include "7SLED.h"
#include <util/atomic.h>

static volatile ClockTime_t sys_time = {12, 0, 0};
static volatile uint8_t is_running = 1;

void clock_init(void) {
    clock_set_time(12, 0, 0);
    is_running = 1;
}

void clock_start(void) {
    is_running = 1;
}

void clock_pause(void) {
    is_running = 0;
}

uint8_t clock_is_running(void) {
    return is_running;
}

void clock_set_time(uint8_t h, uint8_t m, uint8_t s) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        sys_time.hours = (h < 24) ? h : 0;
        sys_time.minutes = (m < 60) ? m : 0;
        sys_time.seconds = (s < 60) ? s : 0;
    }
    clock_update_display();
}

void clock_get_time(ClockTime_t *t) {
    if (t) {
        ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
            t->hours = sys_time.hours;
            t->minutes = sys_time.minutes;
            t->seconds = sys_time.seconds;
        }
    }
}

void clock_tick_1s(void) {
    if (!is_running) return;

    sys_time.seconds++;
    if (sys_time.seconds >= 60) {
        sys_time.seconds = 0;
        sys_time.minutes++;
        if (sys_time.minutes >= 60) {
            sys_time.minutes = 0;
            sys_time.hours++;
            if (sys_time.hours >= 24) {
                sys_time.hours = 0;
            }
        }
    }
}

void clock_update_display(void) {
    ClockTime_t snapshot;
    clock_get_time(&snapshot);
    // Right-align HH.MM.SS; leave the two extra leftmost positions blank.
    const uint8_t offset = SEG7_NUM_DIGITS - 6;
    seg7_set_dp_mask((1u << (offset + 1)) | (1u << (offset + 3)));
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < offset; i++) digits[i] = SEG7_BLANK;
    digits[offset] = snapshot.hours / 10;
    digits[offset + 1] = snapshot.hours % 10;
    digits[offset + 2] = snapshot.minutes / 10;
    digits[offset + 3] = snapshot.minutes % 10;
    digits[offset + 4] = snapshot.seconds / 10;
    digits[offset + 5] = snapshot.seconds % 10;
    seg7_set_array(digits);
}
