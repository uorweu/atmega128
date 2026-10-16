#ifndef RELAY_H
#define RELAY_H

#include <stdint.h>

#define RELAY_0_BIT (1 << 0)
#define RELAY_1_BIT (1 << 1)
#define RELAY_2_BIT (1 << 2)
#define RELAY_3_BIT (1 << 3)

/**
 * @brief Initialize relays (all 4 relays turned off).
 */
void relay_init(void);

/**
 * @brief Set raw 4-bit state for relays (Bit 0 = RL0 ... Bit 3 = RL3).
 */
void relay_set_raw(uint8_t state);

/**
 * @brief Get the current 4-bit state of relays.
 */
uint8_t relay_get_state(void);

/**
 * @brief Turn ON a specific relay (0 to 3).
 */
void relay_on(uint8_t relay_num);

/**
 * @brief Turn OFF a specific relay (0 to 3).
 */
void relay_off(uint8_t relay_num);

/**
 * @brief Toggle a specific relay (0 to 3).
 */
void relay_toggle(uint8_t relay_num);

/**
 * @brief Turn ON Relay 0 and Relay 2 (even relays), turn OFF Relay 1 and Relay 3.
 */
void relay_mode_0_2(void);

/**
 * @brief Turn ON Relay 1 and Relay 3 (odd relays), turn OFF Relay 0 and Relay 2.
 */
void relay_mode_1_3(void);

/**
 * @brief Turn ON all 4 relays.
 */
void relay_all_on(void);

/**
 * @brief Turn OFF all 4 relays.
 */
void relay_all_off(void);

#endif // RELAY_H
