#include "menu.h"
#include "lcd.h"
#include "7SLED.h"
#include "relay.h"
#include <stddef.h>

// Menu definitions: items link to a submenu OR a device-module callback.
static Menu device_menu, led_menu, relay_menu, relay_actions[4];
static MenuItem device_items[] = {
    {"1. 7-SEGMENT LED", NULL, NULL, &led_menu, NULL, NULL},
    {"2. RELAY", NULL, NULL, &relay_menu, NULL, NULL}
};
static MenuItem led_items[] = {
    {"1. DISPLAY 0000", NULL, NULL, NULL, action_seg_clear, NULL},
    {"2. DISPLAY 9999", NULL, NULL, NULL, action_seg_set, NULL},
    {"3. INCREASE", NULL, NULL, NULL, action_seg_increase, action_seg_input},
    {"4. DECREASE", NULL, NULL, NULL, action_seg_decrease, action_seg_input}
};
static MenuItem relay_items[] = {
    {"1. RELAY 1",  NULL, NULL, &relay_actions[0], NULL, NULL},
    {"2. RELAY 2",  NULL, NULL, &relay_actions[1], NULL, NULL},
    {"3. RELAY 3",  NULL, NULL, &relay_actions[2], NULL, NULL},
    {"4. RELAY 4",  NULL, NULL, &relay_actions[3], NULL, NULL},
    {"5. ALL ON",   NULL, NULL, NULL, action_relay_all_on,  NULL},
    {"6. ALL OFF",  NULL, NULL, NULL, action_relay_all_off, NULL}
};
static MenuItem relay_1_items[] = {
    {"1. RELAY ON", NULL, NULL, NULL, action_relay_1_on, NULL},
    {"2. RELAY OFF", NULL, NULL, NULL, action_relay_1_off, NULL}
};
static MenuItem relay_2_items[] = {
    {"1. RELAY ON", NULL, NULL, NULL, action_relay_2_on, NULL},
    {"2. RELAY OFF", NULL, NULL, NULL, action_relay_2_off, NULL}
};
static MenuItem relay_3_items[] = {
    {"1. RELAY ON", NULL, NULL, NULL, action_relay_3_on, NULL},
    {"2. RELAY OFF", NULL, NULL, NULL, action_relay_3_off, NULL}
};
static MenuItem relay_4_items[] = {
    {"1. RELAY ON", NULL, NULL, NULL, action_relay_4_on, NULL},
    {"2. RELAY OFF", NULL, NULL, NULL, action_relay_4_off, NULL}
};
static Menu *current_menu;
static MenuItem *active_action;

// Static storage, no heap allocation. This only wires next/prev/parent links.
static void link_menu(Menu *menu, const char *title, Menu *parent,
                      MenuItem *items, uint8_t count)
{
    menu->title = title;
    menu->first_item = items;
    menu->parent_menu = parent;
    menu->selected = items;
    for (uint8_t i = 0; i < count; i++) {
        items[i].prev = i ? &items[i - 1] : NULL;
        items[i].next = i + 1 < count ? &items[i + 1] : NULL;
    }
}

void menu_init(void)
{
    link_menu(&device_menu, "DEVICES", NULL, device_items, 2);
    link_menu(&led_menu, "LED:", &device_menu, led_items, 4);
    link_menu(&relay_menu, "RELAYS:", &device_menu, relay_items, 6);
    link_menu(&relay_actions[0], "RELAY 1:", &relay_menu, relay_1_items, 2);
    link_menu(&relay_actions[1], "RELAY 2:", &relay_menu, relay_2_items, 2);
    link_menu(&relay_actions[2], "RELAY 3:", &relay_menu, relay_3_items, 2);
    link_menu(&relay_actions[3], "RELAY 4:", &relay_menu, relay_4_items, 2);
    current_menu = &device_menu;
    active_action = NULL;
}

void menu_draw(void)
{
    if (!current_menu || active_action) return;
    lcd_write_line(0, current_menu->title);
    // Keep the first three entries visible until selection reaches entry four.
    MenuItem *first = current_menu->first_item;
    uint8_t index = 0;
    for (MenuItem *item = first; item && item != current_menu->selected; item = item->next)
        index++;
    while (index > 2 && first) {
        first = first->next;
        index--;
    }
    for (uint8_t row = 1; row < LCD_ROWS; row++) {
        lcd_set_cursor(row, 0);
        lcd_send_data(first && first == current_menu->selected ? '>' : ' ');
        lcd_send_data(' ');
        const char *text = first ? first->text : "";
        for (uint8_t col = 2; col < LCD_COLUMNS; col++)
            lcd_send_data(*text ? (uint8_t)*text++ : ' ');
        if (first) first = first->next;
    }
}

void menu_up(void)
{
    if (!current_menu || active_action || !current_menu->selected) return;
    if (current_menu->selected->prev) {
        current_menu->selected = current_menu->selected->prev;
        menu_draw();
    }
}

void menu_down(void)
{
    if (!current_menu || active_action || !current_menu->selected) return;
    if (current_menu->selected->next) {
        current_menu->selected = current_menu->selected->next;
        menu_draw();
    }
}

void menu_enter(void)
{
    if (!current_menu || active_action || !current_menu->selected) return;
    MenuItem *item = current_menu->selected;
    if (item->child_menu) {
        current_menu = item->child_menu;
        // Opening a relay channel starts at ON, matching the current interface.
        // Other menus retain their selection when revisited.
        if (current_menu->parent_menu == &relay_menu)
            current_menu->selected = current_menu->first_item;
        lcd_clear();
        menu_draw();
    } else if (item->action) {
        active_action = item;
        item->action();
    }
}

uint8_t menu_back(void)
{
    if (!current_menu) return 0;
    if (active_action) active_action = NULL;
    else if (current_menu->parent_menu) current_menu = current_menu->parent_menu;
    else return 0;
    lcd_clear();
    menu_draw();
    return 1;
}

uint8_t menu_action_active(void)
{
    return active_action != NULL;
}

void menu_action_input(uint8_t pressed)
{
    if (active_action && active_action->input) active_action->input(pressed);
}
