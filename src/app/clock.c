#include "clock.h"
#include "7SLED.h"

static ClockTime_t sys_time = {12, 0, 0}; // Default start at 12:00:00
static uint8_t is_running = 1;

void clock_init(void) {
    sys_time.hours = 12;
    sys_time.minutes = 0;
    sys_time.seconds = 0;
    is_running = 1;
    clock_update_display();
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
    sys_time.hours = (h < 24) ? h : 0;
    sys_time.minutes = (m < 60) ? m : 0;
    sys_time.seconds = (s < 60) ? s : 0;
    clock_update_display();
}

void clock_get_time(ClockTime_t *t) {
    if (t) {
        *t = sys_time;
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
    // Decimal points on Digit 1 (Hours ones) and Digit 3 (Minutes ones):
    // (1 << 1) | (1 << 3) = 0b00001010
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    seg7_set_digit(0, sys_time.hours / 10);
    seg7_set_digit(1, sys_time.hours % 10);
    seg7_set_digit(2, sys_time.minutes / 10);
    seg7_set_digit(3, sys_time.minutes % 10);
    seg7_set_digit(4, sys_time.seconds / 10);
    seg7_set_digit(5, sys_time.seconds % 10);
}
