#include "define.h"
#include "lcd.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#define LCD_E_MASK (1 << PG3)
#define LCD_RS_MASK (1 << PG4)

/* Main-context API: ISRs may use the shared bus, but must not call the LCD.
 * Keep RS, the data latch, and E atomic; leave execution waits interruptible.
 */
static void lcd_write(uint8_t value, uint8_t is_data) {
  uint8_t sreg = SREG;
  cli();
  if (is_data) {
    PORTG |= LCD_RS_MASK;
    io_bus_write(EXTERNAL_MEM + CSEL1, value);
  } else {
    PORTG &= ~LCD_RS_MASK;
    io_bus_write(EXTERNAL_MEM + CSEL2, value);
  }
  _delay_us(1);
  PORTG |= LCD_E_MASK;
  _delay_us(2);
  PORTG &= ~LCD_E_MASK;
  _delay_us(1);
  SREG = sreg;
}

void lcd_send_cmd(uint8_t cmd) {
  lcd_write(cmd, 0);
  /* Clear and both return-home encodings need a long wait. R/W is grounded.
   * HD44780U: 1.52 ms / 37 us at 270 kHz; allow for a 190 kHz oscillator.
   */
  if (cmd == 0x01 || (cmd & 0xFE) == 0x02) {
    _delay_ms(3);
  } else {
    _delay_us(60);
  }
}

void lcd_send_data(uint8_t data) {
  lcd_write(data, 1);
  /* Includes oscillator margin and the address-counter update time. */
  _delay_us(60);
}

void lcd_init(void) {
  // PG3 = LCD E, PG4 = LCD RS. RS must be disconnected from latched A0.
  // AS0=0 leaves PG3/PG4 as GPIO rather than asynchronous timer pins.
  ASSR &= ~(1 << AS0);
  PORTG &= ~(LCD_E_MASK | LCD_RS_MASK);
  DDRG |= LCD_E_MASK | LCD_RS_MASK;

  // Retain the board's conservative startup/recovery sequence.
  _delay_ms(100);
  lcd_send_cmd(0x38);
  _delay_ms(10);
  lcd_send_cmd(0x38);
  _delay_ms(5);
  lcd_send_cmd(0x38);
  _delay_ms(5);
  lcd_send_cmd(0x38); // 8-bit, 2 controller lines, 5x8 font
  _delay_ms(5);
  lcd_display();
  _delay_ms(5);
  lcd_clear();
  _delay_ms(10);
  lcd_send_cmd(0x06); // Increment cursor, no display shift
  _delay_ms(5);
}

void lcd_clear(void) {
  lcd_send_cmd(0x01);
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
  if (row > 3) row = 3;
  /* 20x4 DDRAM row bases: 0x00, 0x40, 0x14, 0x54.
   * Compute them without an SRAM table or stack copy.
   */
  uint8_t offset = ((row & 1) ? 0x40 : 0) + ((row & 2) ? 0x14 : 0);
  lcd_send_cmd(0x80 | (col + offset));
}

void lcd_send_string(const char *str) {
  while (*str) lcd_send_data((uint8_t)*str++);
}

void lcd_send_string_animated(const char *str, uint16_t delay_ms_per_char) {
  while (*str) {
    lcd_send_data((uint8_t)*str++);
    for (uint16_t i = 0; i < delay_ms_per_char; i++) _delay_ms(1);
  }
}

void lcd_display(void) {
  lcd_send_cmd(0x0C);
}


void lcd_write_line(uint8_t row, const char *text)
{
    if (row >= LCD_ROWS) return;
    lcd_set_cursor(row, 0);
    for (uint8_t column = 0; column < LCD_COLUMNS; column++) {
        if (*text) lcd_send_data((uint8_t)*text++);
        else lcd_send_data(' ');
    }
}
