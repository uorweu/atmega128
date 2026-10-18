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
    // Decimal points on Digit 1 (Hours ones) and Digit 3 (Minutes ones):
    // (1 << 1) | (1 << 3) = 0b00001010
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    const uint8_t digits[SEG7_NUM_DIGITS] = {
        snapshot.hours / 10, snapshot.hours % 10,
        snapshot.minutes / 10, snapshot.minutes % 10,
        snapshot.seconds / 10, snapshot.seconds % 10
    };
    seg7_set_array(digits);
}
