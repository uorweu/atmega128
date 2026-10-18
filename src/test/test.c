#include "define.h"
#include "lcd.h"
#include "buttons.h"
#include "menu.h"
#include "clock.h"
#include "7SLED.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/atomic.h>

// Button latch OE must connect to PG1/RD_L, with its 10k pull-up retained.
// Real LCD/buttons/7-segment clock; relay outputs remain simulated.
static volatile uint16_t ticks;
ISR(TIMER1_COMPA_vect) {
  ticks++;
}

int main(void) {
  // Retain the hardware XMEM configuration of the working static menu.
  MCUCR |= (1 << SRE);
  lcd_init();
  clock_init();
  menu_init();

  // Timer1 provides a 10 ms tick at 16 MHz; PG3/PG4 remain LCD E/RS.
  TCCR1A = 0;
  TCCR1B = 0;
  TCNT1 = 0;
  OCR1A = (F_CPU / 64UL / 100UL) - 1;
  TIFR = (1 << OCF1A);
  TIMSK |= (1 << OCIE1A);
  TCCR1B = (1 << WGM12) | (1 << CS11) | (1 << CS10);
  seg7_init(); // Timer0 scans digits and supplies the ONLY 1-second clock tick.
  sei();

  uint16_t processed = 0;

  while (1) {
    uint16_t now;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
      now = ticks;
    }
    if (processed == now) continue;
    processed++;
    button_update(); // Read active-HIGH button bits at CSEL0 (0x1100).
    menu_update();
  }
}
