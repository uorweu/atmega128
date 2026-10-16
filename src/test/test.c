#include "define.h"
#include "lcd.h"
#include <avr/io.h> 
#include <util/delay.h>

void main(void) {
  MCUCR |= (1 << SRE);

  lcd_init();
  lcd_set_cursor(0, 0);
  lcd_send_string("hello world");

  while (1) {
  }

}
