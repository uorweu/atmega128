#ifndef _7SLED_H
#define _7SLED_H

#include <stdint.h>

#define SEG7_NUM_DIGITS 6
#define SEG7_BLANK      0xFF

/**
 * @brief Initialize the 7-segment display module (turns off all digits & starts Timer0).
 */
void seg7_init(void);

/**
 * @brief Set the value (0-15 hex, or SEG7_BLANK) for a specific digit position (0: leftmost, 5: rightmost).
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
 * @brief Set the decimal point mask (Bit 0 = Digit 0 ... Bit 5 = Digit 5).
 *        Bit = 1 lights up the DP for that digit.
 */
void seg7_set_dp_mask(uint8_t mask);

/**
 * @brief Multiplexer update function (called automatically by Timer0 ISR).
 */
void seg7_update(void);

#endif // _7SLED_H
