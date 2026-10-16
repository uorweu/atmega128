#include "relay.h"
#include "define.h"

static uint8_t current_relay_state = 0x00;

void relay_init(void) {
    relay_all_off();
}

void relay_set_raw(uint8_t state) {
    // Only bits 0..3 are connected to RL0..RL3
    current_relay_state = state & 0x0F;
    RELAYS = current_relay_state;
}

uint8_t relay_get_state(void) {
    return current_relay_state;
}

void relay_on(uint8_t relay_num) {
    if (relay_num < 4) {
        relay_set_raw(current_relay_state | (1 << relay_num));
    }
}

void relay_off(uint8_t relay_num) {
    if (relay_num < 4) {
        relay_set_raw(current_relay_state & ~(1 << relay_num));
    }
}

void relay_toggle(uint8_t relay_num) {
    if (relay_num < 4) {
        relay_set_raw(current_relay_state ^ (1 << relay_num));
    }
}

void relay_mode_0_2(void) {
    // Turn ON Relay 0 & Relay 2, Turn OFF Relay 1 & Relay 3
    relay_set_raw(RELAY_0_BIT | RELAY_2_BIT);
}

void relay_mode_1_3(void) {
    // Turn ON Relay 1 & Relay 3, Turn OFF Relay 0 & Relay 2
    relay_set_raw(RELAY_1_BIT | RELAY_3_BIT);
}

void relay_all_on(void) {
    relay_set_raw(0x0F);
}

void relay_all_off(void) {
    relay_set_raw(0x00);
}
