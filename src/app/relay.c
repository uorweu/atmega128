#include "relay.h"
#include "define.h"

// Software mirror of the write-only RELAYS register.
static uint8_t state;

void relay_init(void)      { state = 0x00; RELAYS = state; }
void relay_all_on(void)    { state |= RELAY_MASK;  RELAYS = state; }
void relay_all_off(void)   { state &= ~RELAY_MASK; RELAYS = state; }
void relay_on(uint8_t num) { if (num < 4) { state |=  (1u << num); RELAYS = state; } }
void relay_off(uint8_t num){ if (num < 4) { state &= ~(1u << num); RELAYS = state; } }

// Menu callbacks keep relay behavior and its status screen in this module.
#include "lcd.h"
static void action_relay(uint8_t channel, uint8_t on)
{
    if (on) relay_on(channel);
    else relay_off(channel);
    char title[] = "RELAY 1";
    title[6] = '1' + channel;
    lcd_clear();
    lcd_write_line(0, title);
    lcd_write_line(1, (state & (1u << channel)) ? "STATE: ON" : "STATE: OFF");
}
void action_relay_1_on(void)  { action_relay(0, 1); }
void action_relay_1_off(void) { action_relay(0, 0); }
void action_relay_2_on(void)  { action_relay(1, 1); }
void action_relay_2_off(void) { action_relay(1, 0); }
void action_relay_3_on(void)  { action_relay(2, 1); }
void action_relay_3_off(void) { action_relay(2, 0); }
void action_relay_4_on(void)  { action_relay(3, 1); }
void action_relay_4_off(void) { action_relay(3, 0); }
void action_relay_all_on(void)  { relay_all_on();  lcd_clear(); lcd_write_line(0, "ALL RELAYS"); lcd_write_line(1, "STATE: ON"); }
void action_relay_all_off(void) { relay_all_off(); lcd_clear(); lcd_write_line(0, "ALL RELAYS"); lcd_write_line(1, "STATE: OFF"); }
