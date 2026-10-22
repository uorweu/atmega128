#include "welcome.h"
#include "lcd.h"

#define SCROLL_STEP_TICKS 25       // 250 ms between character steps.
#define SCROLL_END_PAUSE_TICKS 100 // 1 second pause at either end.
static const char members[] = "MEMBERS: BAO - DUC - MINH - HUNG";
#define SCROLL_MAX (sizeof(members) - 1u - LCD_COLUMNS)

static uint8_t scroll_position;
static uint8_t scroll_forward;
static uint8_t scroll_delay;

static void draw_members(void)
{
    lcd_set_cursor(2, 0);
    for (uint8_t column = 0; column < LCD_COLUMNS; column++)
        lcd_send_data((uint8_t)members[scroll_position + column]);
}

void welcome_show(void)
{
    scroll_position = 0;
    scroll_forward = 1;
    scroll_delay = SCROLL_END_PAUSE_TICKS;
    lcd_clear();
    lcd_write_line(1, "     PROJECT 01");
    draw_members();
}

void welcome_update(void)
{
    if (--scroll_delay != 0) return;
    if (scroll_forward) {
        if (++scroll_position == SCROLL_MAX) scroll_forward = 0;
    } else {
        if (--scroll_position == 0) scroll_forward = 1;
    }
    draw_members();
    scroll_delay = (scroll_position == 0 || scroll_position == SCROLL_MAX)
                 ? SCROLL_END_PAUSE_TICKS : SCROLL_STEP_TICKS;
}

