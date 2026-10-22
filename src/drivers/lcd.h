#ifndef LCD_H
#define LCD_H

#include <stdint.h>

#define LCD_COLUMNS 20
#define LCD_ROWS 4

/* Blocking, main-context API; do not call from ISRs. Execution waits restore
 * the caller's interrupt state. lcd_send_cmd handles clear/home waits too.
 */
void lcd_init(void);
void lcd_send_cmd(uint8_t cmd);
void lcd_send_data(uint8_t data);
void lcd_send_string(const char* str);
// Write one whole row, clipping or padding to LCD_COLUMNS characters.
void lcd_write_line(uint8_t row, const char *text);
void lcd_send_string_animated(const char* str, uint16_t delay_ms_per_char);
void lcd_set_cursor(uint8_t row, uint8_t col);
void lcd_clear(void);
void lcd_display(void);

#endif
