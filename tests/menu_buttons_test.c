// Host integration checks of the current modules with simulated LCD/bus I/O.
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include "define.h"

static uint8_t input_bits;
uint8_t TCCR2, TCNT2, OCR2, TIFR, TIMSK;
uint8_t ASSR, TCCR0, TCNT0, OCR0;
static uint8_t digit_control, segment_data;
#undef LED_7CONTROL
#undef LED_7DATA
#define LED_7CONTROL digit_control
#define LED_7DATA segment_data
#include "../src/app/7SLED.c"
#include "../src/app/welcome.c"
uint8_t XMCRA, MCUCR;
static uint8_t latch_levels;
#undef RELAYS
#define RELAYS latch_levels
#include "../src/app/relay.c"
#undef READ_BUTTONS
#define READ_BUTTONS (*(uint8_t *)(&buttons) = input_bits)
#include "../src/app/buttons.c"
#include "../src/app/menu.c"
#define main project_entrypoint
#include "../src/main/main.c"
#undef main

static char lcd_rows[4][21];
static uint8_t row, column;


void lcd_clear(void)
{
    for (unsigned r = 0; r < 4; r++) {
        memset(lcd_rows[r], ' ', 20);
        lcd_rows[r][20] = 0;
    }
    row = column = 0;
}
void lcd_set_cursor(uint8_t r, uint8_t c)
{
    assert(r < 4 && c < 20);
    row = r;
    column = c;
}
void lcd_send_data(uint8_t ch)
{
    assert(column < 20);
    lcd_rows[row][column++] = ch;
}
void lcd_send_string(const char *text)
{
    while (*text) lcd_send_data((uint8_t)*text++);
}
void lcd_write_line(uint8_t r, const char *text)
{
    lcd_set_cursor(r, 0);
    for (unsigned c = 0; c < LCD_COLUMNS; c++) {
        if (*text) lcd_send_data((uint8_t)*text++);
        else lcd_send_data(' ');
    }
}
void lcd_init(void) { lcd_clear(); }
void test_delay_ms(double ms) { (void)ms; }
static void reset_ui(void)
{
    menu_init();
    in_menu = 0;
    welcome_show();
}

static void tick(uint8_t bits)
{
    if (TIMSK & (1 << OCIE2)) {
        for (unsigned i = 0; i < 40; i++) TIMER2_COMP_vect();
    }
    input_bits = bits;
    button_update();
    dispatch_buttons(button_pressed(), button_triggered());
}
static void tap(uint8_t bits) { tick(bits); tick(0); }
static void expect_four(uint16_t expected)
{
    for (unsigned i = 0; i < 4; i++) assert(display_buffer[i] == SEG7_BLANK);
    for (unsigned i = 8; i > 4; i--) {
        assert(display_buffer[i - 1] == expected % 10);
        expected /= 10;
    }
    assert(dp_mask == 0);
}
int main(void)
{
    relay_init();
    seg7_init();
    for (unsigned bit = 0; bit < 8; bit++) {
        input_bits = 1u << bit;
        button_update();
        assert(button_pressed() == input_bits);
        unsigned repeats = 0;
        for (unsigned n = 2; n <= 2000; n++) {
            button_update();
            assert(button_pressed() == 0);
            if (button_held()) repeats++;
        }
        assert(repeats == 246);
        input_bits = 0;
        button_update();
    }

    reset_ui();
    assert(strncmp(lcd_rows[1] + 5, "PROJECT 01", 10) == 0);
    assert(strcmp(lcd_rows[3], "                    ") == 0);
    assert(strncmp(lcd_rows[2], "MEMBERS: BAO - DUC - ", 20) == 0);
    for (unsigned n = 0; n < 99; n++) tick(0);
    assert(strncmp(lcd_rows[2], "MEMBERS: BAO - DUC - ", 20) == 0);
    tick(0);
    assert(strncmp(lcd_rows[2], "EMBERS: BAO - DUC - M", 20) == 0);
    unsigned reached_end = 0, returned = 0;
    for (unsigned n = 0; n < 1000; n++) {
        tick(0);
        assert(scroll_position <= 12);
        assert(strncmp(lcd_rows[1] + 5, "PROJECT 01", 10) == 0);
        if (scroll_position == 12) reached_end = 1;
        if (reached_end && scroll_position == 0) returned = 1;
    }
    assert(reached_end && returned);

    for (unsigned bit = 0; bit < 8; bit++) {
        reset_ui();
        tap(1u << bit);
        assert(in_menu && current_menu == &device_menu && current_menu->selected == device_items);
    }
    assert(strcmp(lcd_rows[0], "DEVICES             ") == 0);
    assert(strncmp(lcd_rows[1], "> 1. 7-SEGMENT LED", 17) == 0);
    assert(device_menu.parent_menu == NULL);
    assert(device_items[0].next == &device_items[1]);
    assert(device_items[1].prev == &device_items[0]);
    assert(device_items[1].next == NULL);
    for (unsigned i = 0; i < 4; i++) {
        assert(led_items[i].prev == (i ? &led_items[i - 1] : NULL));
        assert(led_items[i].next == (i < 3 ? &led_items[i + 1] : NULL));
        assert(led_items[i].action != NULL);
        assert(relay_items[i].child_menu == &relay_actions[i]);
        assert(relay_actions[i].parent_menu == &relay_menu);
    }
    assert(strstr(lcd_rows[1], "LED") && strstr(lcd_rows[2], "RELAY"));
    tap(BTN_BIT_UP);
    assert(current_menu->selected == device_items);
    tap(BTN_BIT_GO);
    assert(current_menu == &led_menu && !active_action);
    tap(BTN_BIT_GO);
    expect_four(0);
    for (unsigned n = 0; n < 100; n++) tick(0);
    expect_four(0);

    tap(BTN_BIT_LEFT); tap(BTN_BIT_DOWN); tap(BTN_BIT_GO);
    expect_four(9999);
    tap(BTN_BIT_LEFT); tap(BTN_BIT_DOWN); tap(BTN_BIT_GO);
    expect_four(0);
    tick(BTN_BIT_UP);
    for (unsigned n = 0; n < 100; n++) tick(BTN_BIT_UP);
    expect_four(1); // One physical press, even when held.
    tick(0);
    tap(BTN_BIT_DOWN); expect_four(1);
    for (unsigned n = 0; n < 9998; n++) tap(BTN_BIT_UP);
    expect_four(9999);
    tap(BTN_BIT_UP); expect_four(9999);

    tap(BTN_BIT_LEFT); tap(BTN_BIT_DOWN);
    assert(strncmp(lcd_rows[3], "> 4. DECREASE", 13) == 0);
    tap(BTN_BIT_DOWN); assert(current_menu->selected == &led_items[3]);
    tap(BTN_BIT_GO); expect_four(9999);
    tap(BTN_BIT_DOWN); expect_four(9998);
    tap(BTN_BIT_UP); expect_four(9998);
    for (unsigned n = 0; n < 9998; n++) tap(BTN_BIT_DOWN);
    expect_four(0);
    tap(BTN_BIT_DOWN); expect_four(0);
    tap(BTN_BIT_LEFT);
    tap(BTN_BIT_LEFT);
    assert(current_menu == &device_menu);

    tap(BTN_BIT_DOWN); tap(BTN_BIT_GO);
    assert(current_menu == &relay_menu);
    for (unsigned channel = 0; channel < 4; channel++) {
        assert(current_menu->selected == &relay_items[channel]);
        if (channel == 3) assert(strncmp(lcd_rows[3], "> 4. RELAY 4", 12) == 0);
        uint8_t before = relay_get_state();
        tap(BTN_BIT_GO);
        assert(current_menu == &relay_actions[channel] && !active_action && relay_get_state() == before);
        assert(lcd_rows[0][6] == (char)('1' + channel));
        tap(BTN_BIT_GO);
        assert(active_action != NULL);
        assert(relay_get_state() == (1u << (channel + 1)) - 1);
        assert((latch_levels & RELAY_MASK) ==
               ((relay_get_state() ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK));
        assert(strncmp(lcd_rows[1], "STATE: ON", 9) == 0);
        tap(BTN_BIT_LEFT); tap(BTN_BIT_LEFT);
        if (channel < 3) tap(BTN_BIT_DOWN);
    }
    tap(BTN_BIT_DOWN); assert(current_menu->selected == &relay_items[3]);
    for (int channel = 3; channel >= 0; channel--) {
        tap(BTN_BIT_GO); tap(BTN_BIT_DOWN); tap(BTN_BIT_GO);
        assert(relay_get_state() == (1u << channel) - 1);
        assert(strncmp(lcd_rows[1], "STATE: OFF", 10) == 0);
        tap(BTN_BIT_LEFT); tap(BTN_BIT_LEFT);
        if (channel > 0) tap(BTN_BIT_UP);
    }
    tap(BTN_BIT_UP); assert(current_menu->selected == &relay_items[0]);
    tap(BTN_BIT_GO); tap(BTN_BIT_GO);
    assert(relay_get_state() == 1);
    tap(BTN_BIT_1);
    assert(!in_menu && relay_get_state() == 1);
    tap(BTN_BIT_LEFT);
    assert(in_menu && current_menu == &device_menu);
    tap(BTN_BIT_LEFT);
    assert(!in_menu && relay_get_state() == 1);
    relay_all_off();
    puts("PASS: nested linked lists/callbacks and main dispatch, 8 inputs/repeat, manual LED modes/bounds, 4 independent relays, back/exit");
}
