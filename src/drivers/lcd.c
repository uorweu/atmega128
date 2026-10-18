#include "define.h"
#include "lcd.h"

#include <avr/io.h>
#include <util/delay.h>

#define PORTG_REG (*(volatile uint8_t *)0x65)
#define DDRG_REG (*(volatile uint8_t *)0x64)
#define PG3 3
#define PG4 4

#include <avr/interrupt.h>

void lcd_send_cmd(uint8_t cmd) {
  uint8_t sreg = SREG;
  cli();                      // Protect RS, latched data, and the E pulse
  PORTG_REG &= ~(1 << PG4);   // Dedicated LCD RS LOW: command
  io_bus_write(EXTERNAL_MEM + CSEL2, cmd);          // CSEL2 loads the LCD data latch
  _delay_us(1);
  PORTG_REG |= (1 << PG3);    // LCD_E HIGH
  _delay_us(2);               // HD44780 requires > 450 ns
  PORTG_REG &= ~(1 << PG3);   // LCD_E LOW (falling edge latches command)
  _delay_us(1);               // Hold RS and data after E falls
  SREG = sreg;                // Restore interrupts
  _delay_us(100);             // Standard command execution time (> 37 us)
}


void lcd_send_data(uint8_t data) {
  uint8_t sreg = SREG;
  cli();                      // Protect RS, latched data, and the E pulse
  PORTG_REG |= (1 << PG4);    // Dedicated LCD RS HIGH: character data
  io_bus_write(EXTERNAL_MEM + CSEL1, data);        // CSEL1 loads the LCD data latch

  _delay_us(1);
  PORTG_REG |= (1 << PG3);    // LCD_E HIGH
  _delay_us(2);               // HD44780 requires > 450 ns
  PORTG_REG &= ~(1 << PG3);   // LCD_E LOW (falling edge latches data)
  _delay_us(1);               // Hold RS and data after E falls
  SREG = sreg;                // Restore interrupts

  _delay_us(50);              // Standard data execution time (> 43 us)
}

void lcd_init(void){
  // PG3 = LCD E, PG4 = LCD RS. RS must be disconnected from latched A0.
  // AS0=0 leaves PG3/PG4 as GPIO rather than asynchronous timer pins.
  ASSR &= ~(1 << AS0);
  PORTG_REG &= ~((1 << PG3) | (1 << PG4));
  DDRG_REG |= (1 << PG3) | (1 << PG4);

  // Power-on delay for HD44780
  _delay_ms(100);

  // Standard HD44780 8-bit initialization sequence
  lcd_send_cmd(0x38);
  _delay_ms(10);
  lcd_send_cmd(0x38);
  _delay_ms(5);
  lcd_send_cmd(0x38);
  _delay_ms(5);

  // Function set: 8-bit, 2 lines, 5x8 font
  lcd_send_cmd(0x38);
  _delay_ms(5);

  // Display ON, Cursor OFF, Blink OFF (0x0C) for clean look
  lcd_send_cmd(0x0C);
  _delay_ms(5);

  // Clear display (clears the 2 solid black rows)
  lcd_clear();
  _delay_ms(10);

  // Entry mode set: increment cursor, no display shift
  lcd_send_cmd(0x06);
  _delay_ms(5);
}

void lcd_clear(void) {
  lcd_send_cmd(0x01);
  _delay_ms(10);
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
  if (row > 3) row = 3;
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
}

void lcd_send_string(const char* str){
  while(*str){
    lcd_send_data(*str++);
  }
}

void lcd_send_string_animated(const char* str, uint16_t delay_ms_per_char) {
  while (*str) {
    lcd_send_data(*str++);
    for (uint16_t i = 0; i < delay_ms_per_char; i++) {
      _delay_ms(1);
    }
  }
}

void lcd_display(void){
  lcd_send_cmd(0x0C);
}
