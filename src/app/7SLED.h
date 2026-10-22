#ifndef _7SLED_H
#define _7SLED_H

#include <stdint.h>

#define SEG7_NUM_DIGITS 8
#define SEG7_BLANK      0xFF
#define SEG7_DP_MASK    0x01 // Physical segment-latch bit 0, confirmed on board

/**
 * @brief Initialize the 7-segment display module (turns off all digits & starts Timer0).
 */
void seg7_init(void);

/**
 * @brief Set the value (0-15 hex, or SEG7_BLANK) for a specific digit position (0: leftmost, 7: rightmost).
 */
void seg7_set_digit(uint8_t pos, uint8_t value);

/**
 * @brief Set all 8 digits at once from an array of 8 values.
 */
void seg7_set_array(const uint8_t digits[SEG7_NUM_DIGITS]);

/**
 * @brief Set the 8-digit display from a number (e.g. 102026).
 */
void seg7_set_number(uint32_t num);
// Right-align a zero-padded decimal number in width digits; blank the rest.
// Width must be 1..SEG7_NUM_DIGITS; excess high digits are discarded.
// Decimal-point selection is controlled separately.
void seg7_set_decimal(uint32_t num, uint8_t width);

/**
 * @brief Set the decimal point mask (Bit 0 = Digit 0 ... Bit 7 = Digit 7).
 *        Bit = 1 lights up the DP for that digit.
 */
void seg7_set_dp_mask(uint8_t mask);

/**
 * @brief Multiplexer update function (called automatically by Timer0 ISR).
 */
void seg7_update(void);

// Menu actions: initialization/display and new-press input while a mode is open.
void action_seg_clear(void);
void action_seg_set(void);
void action_seg_increase(void);
void action_seg_decrease(void);
void action_seg_input(uint8_t pressed);

#endif // _7SLED_H
