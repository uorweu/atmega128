#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>

#include "define.h"
#include "lcd.h"
#include "buttons.h"
#include "7SLED.h"
#include "relay.h"
#include "menu.h"
#include "clock.h"

int main(void) {
    // 1. Enable External Memory Interface with wait states
    //    SRW10 in MCUCR, and SRW01/SRW00/SRW11 in XMCRA give 2 wait states
    MCUCR |= (1 << SRE) | (1 << SRW10);
    XMCRA = (1 << SRW01) | (1 << SRW00) | (1 << SRW11);

    // 2. Initialize Peripherals
    lcd_init();     // Initialize LCD (HD44780 8-bit mode)
    relay_init();   // Initialize Relays (all 4 relays OFF)
    clock_init();   // Initialize clock/display buffer before Timer0 starts.
    seg7_init();    // Initialize 7-segment display (turn all digits off)
    menu_init();    // Build linked-list menu tree & show "HI YOU"

    // 3. Main Loop
    while (1) {
        // Sample & debounce button states
        button_update();

        // Update menu navigation, blinking header, and LCD display
        menu_update();
        // (7-segment LED multiplexing is now handled automatically by Timer0 ISR at 500 Hz)
        // 10ms loop tick
        _delay_ms(10);
    }

    return 0;
}
