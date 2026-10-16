#ifndef _7SLED_H
#define _7SLED_H

#include <stdint.h>

#define SEG7_NUM_DIGITS 6

/**
 * @brief Initialize the 7-segment display module (turns off all digits).
 */
void seg7_init(void);

/**
 * @brief Set the value (0-15 hex) for a specific digit position (0: leftmost, 5: rightmost).
 */
void seg7_set_digit(uint8_t pos, uint8_t value);

/**
 * @brief Set all 6 digits at once from an array of 6 values.
 */
void seg7_set_array(const uint8_t digits[6]);

/**
 * @brief Set the 6-digit display from a number (e.g. 102026).
 */
void seg7_set_number(uint32_t num);

/**
 * @brief Multiplexer update function.
 *        Call this periodically (e.g. every 1-2 ms) to refresh one digit.
 */
void seg7_update(void);

#endif // _7SLED_H
