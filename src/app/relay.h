#ifndef RELAY_H
#define RELAY_H
#include <stdint.h>

#define RELAY_0_BIT (1u << 0)
#define RELAY_1_BIT (1u << 1)
#define RELAY_2_BIT (1u << 2)
#define RELAY_3_BIT (1u << 3)
#define RELAY_MASK  0x0Fu

void relay_init(void);
void relay_all_on(void);
void relay_all_off(void);
void relay_on(uint8_t num);
void relay_off(uint8_t num);

// Actions used by the nested relay menus.
void action_relay_1_on(void);
void action_relay_1_off(void);
void action_relay_2_on(void);
void action_relay_2_off(void);
void action_relay_3_on(void);
void action_relay_3_off(void);
void action_relay_4_on(void);
void action_relay_4_off(void);
void action_relay_all_on(void);
void action_relay_all_off(void);

#endif
