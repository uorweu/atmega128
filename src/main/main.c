// Startup and button dispatch; menu.c connects the device callbacks.
#include "define.h"
#include "lcd.h"
#include "buttons.h"
#include "relay.h"
#include "7SLED.h"
#include "menu.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "welcome.h"

static uint8_t in_menu;

// Only button dispatch belongs here; linked-list navigation lives in menu.c.
static void dispatch_buttons(uint8_t pressed, uint8_t navigation)
{
    if (!in_menu) {
        if (pressed) {
            menu_init();
            in_menu = 1;
            lcd_clear();
            menu_draw();
        } else welcome_update();
        return;
    }
    if (pressed & BTN_BIT_1) {
        in_menu = 0;
        welcome_show();
    } else if (pressed & BTN_BIT_LEFT) {
        if (!menu_back()) {
            in_menu = 0;
            welcome_show();
        }
    } else if (menu_action_active()) {
        menu_action_input(pressed);
    } else if (navigation & BTN_BIT_DOWN) menu_down();
    else if (navigation & BTN_BIT_UP) menu_up();
    else if (pressed & (BTN_BIT_GO | BTN_BIT_RIGHT)) menu_enter();
}

int main(void)
{
    cli();

    // Hardware XMEM setup and the existing conservative wait settings.
    XMCRA = (1 << SRW11);
    MCUCR |= (1 << SRE) | (1 << SRW10);
    relay_init();
    LED_7CONTROL = 0;
    LED_7DATA = 0;
    lcd_init();
    menu_init();
    in_menu = 0;
    welcome_show();

    // Timer0 refreshes the multiplexed display; no application timer.
    seg7_init();
    sei();

    while (1) {
        _delay_ms(10);
        button_update();
        dispatch_buttons(button_pressed(), button_triggered());
    }
}
