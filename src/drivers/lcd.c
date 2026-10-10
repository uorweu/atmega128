#include "define.h"
#include "lcd.h"
#include <avr/io.h>
#include <util/delay.h>

#define PORTG_REG (*(volatile uint8_t *)0x65)
#define DDRG_REG (*(volatile uint8_t *)0x64)
#define PG3 3 

void lcd_send_cmd(uint8_t cmd) {
  LCD_CMD_REG = cmd;
  PORTG_REG |= (1 << PG3);
  _delay_us(1);
  PORTG_REG &= ~(1 << PG3);
  _delay_ms(2);
}

void lcd_send_data(uint8_t data) {
  LCD_DATA_REG = data;
  PORTG_REG |= (1 << PG3);
  _delay_us(1);
  PORTG_REG &= ~(1 << PG3);
  _delay_us(50);
}

void lcd_init(void){
  DDRG_REG |= (1 << PG3);

  _delay_ms(50);
  lcd_send_cmd(0x38);
  _delay_ms(5);
  lcd_send_cmd(0x38);
  _delay_us(150);
  lcd_send_cmd(0x38);

  lcd_send_cmd(0x0C);
  lcd_send_cmd(0x06);
  lcd_clear();
}

void lcd_clear(void) {
  lcd_send_cmd(0x01);
  _delay_ms(2);
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

void lcd_display(void){
  lcd_send_cmd(0x0C);
}
