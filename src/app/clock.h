#ifndef CLOCK_H
#define CLOCK_H

#include <stdint.h>

typedef struct {
    uint8_t hours;   // 00 to 23
    uint8_t minutes; // 00 to 59
    uint8_t seconds; // 00 to 59
} ClockTime_t;

/**
 * @brief Initialize the real-time clock (default 12:00:00).
 */
void clock_init(void);

/**
 * @brief Start / resume the clock counting.
 */
void clock_start(void);

/**
 * @brief Pause the clock counting (used when adjusting time).
 */
void clock_pause(void);

/**
 * @brief Check if clock is running.
 */
uint8_t clock_is_running(void);

/**
 * @brief Set time directly.
 */
void clock_set_time(uint8_t h, uint8_t m, uint8_t s);

/**
 * @brief Get current time structure.
 */
void clock_get_time(ClockTime_t *t);

/**
 * @brief 1-second tick callback (called by Timer0 ISR every 1000ms).
 */
void clock_tick_1s(void);

/**
 * @brief Update the 7-segment display with current time and decimal points (HH.MM.SS).
 */
void clock_update_display(void);

#endif // CLOCK_H
