// Software-only relay outputs for make test: no CSEL5 writes.

#include "relay.h"

static uint8_t relay_state;


void relay_init(void) { relay_state = 0; }
void relay_set_raw(uint8_t state) { relay_state = state & 0x0F; }
uint8_t relay_get_state(void) { return relay_state; }
void relay_on(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state | (1 << num));
}
void relay_off(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state & ~(1 << num));
}
void relay_toggle(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state ^ (1 << num));
}
void relay_mode_0_2(void) { relay_set_raw(RELAY_0_BIT | RELAY_2_BIT); }
void relay_mode_1_3(void) { relay_set_raw(RELAY_1_BIT | RELAY_3_BIT); }
void relay_all_on(void) { relay_set_raw(0x0F); }
void relay_all_off(void) { relay_set_raw(0); }
