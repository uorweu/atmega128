#include "menu.h"
#include "buttons.h"
#include "lcd.h"
#include "7SLED.h"
#include "define.h"
#include <util/delay.h>
#include <stddef.h>

// Forward declarations of action functions
static void action_7seg_time(void);
static void action_7seg_countup(void);
static void action_7seg_mode3(void);
static void action_relay1(void);
static void action_relay2(void);
static void action_relay_all_off(void);
static void action_version(void);
static void action_about(void);

// ==========================================
// 1. CREATE THE MENUS (Clean architecture)
// ==========================================
Menu MainMenu   = {"   CHOSE FUNCTION   ", NULL, NULL};
Menu SegMenu    = {"  7-SEGMENT LED     ", NULL, &MainMenu};
Menu RelayMenu  = {"  RELAYS CONTROL    ", NULL, &MainMenu};
Menu SystemMenu = {"    SYSTEM INFO     ", NULL, &MainMenu};

// ==========================================
// 2. CREATE THE ITEMS
// ==========================================
// Main Menu Items
MenuItem Main_Item1 = {"1. 7-SEGMENT LED", NULL, NULL, &SegMenu,    NULL};
MenuItem Main_Item2 = {"2. RELAYS",        NULL, NULL, &RelayMenu,  NULL};
MenuItem Main_Item3 = {"3. SYSTEM INFO",   NULL, NULL, &SystemMenu, NULL};

// 7-SEG Menu Items
MenuItem Seg_Item1 = {"1. CURRENT TIME", NULL, NULL, NULL, action_7seg_time};
MenuItem Seg_Item2 = {"2. COUNT UP",     NULL, NULL, NULL, action_7seg_countup};
MenuItem Seg_Item3 = {"3. MODE 3 (TBD)", NULL, NULL, NULL, action_7seg_mode3};

// Relay Menu Items
MenuItem Relay_Item1 = {"1. RELAY 1 TOGGLE", NULL, NULL, NULL, action_relay1};
MenuItem Relay_Item2 = {"2. RELAY 2 TOGGLE", NULL, NULL, NULL, action_relay2};
MenuItem Relay_Item3 = {"3. ALL RELAYS OFF", NULL, NULL, NULL, action_relay_all_off};

// System Menu Items
MenuItem Sys_Item1 = {"1. VERSION 1.0",    NULL, NULL, NULL, action_version};
MenuItem Sys_Item2 = {"2. ATMEGA128A MCU", NULL, NULL, NULL, action_about};

// ==========================================
// 3. SYSTEM VARIABLES (The Engine)
// ==========================================
typedef enum {
    STATE_WELCOME,
    STATE_MENU,
    STATE_RUNNING
} MenuState_t;

static MenuState_t current_state = STATE_WELCOME;
static Menu *current_menu;
static MenuItem *current_item;
static MenuItem *top_display_item;
static uint8_t cursor_row = 1;

static void (*active_action_func)(void) = NULL;
static uint8_t blink_counter = 0;
static uint8_t blink_on = 1;
static uint8_t action_tick = 0;

// Internal action state variables
static uint32_t sim_clock_time = 120000; // 12:00:00
static uint16_t count_val = 0;
static uint8_t relay_state = 0;

static uint8_t welcome_char_idx = 0;
static uint8_t welcome_timer = 0;

// ==========================================
// 4. INITIALIZATION
// ==========================================
void menu_init(void) {
    // Wire up Main Menu
    Main_Item1.next = &Main_Item2; Main_Item1.prev = NULL;
    Main_Item2.next = &Main_Item3; Main_Item2.prev = &Main_Item1;
    Main_Item3.next = NULL;        Main_Item3.prev = &Main_Item2;
    MainMenu.first_item = &Main_Item1;

    // Wire up 7-SEG Menu
    Seg_Item1.next = &Seg_Item2; Seg_Item1.prev = NULL;
    Seg_Item2.next = &Seg_Item3; Seg_Item2.prev = &Seg_Item1;
    Seg_Item3.next = NULL;       Seg_Item3.prev = &Seg_Item2;
    SegMenu.first_item = &Seg_Item1;

    // Wire up Relay Menu
    Relay_Item1.next = &Relay_Item2; Relay_Item1.prev = NULL;
    Relay_Item2.next = &Relay_Item3; Relay_Item2.prev = &Relay_Item1;
    Relay_Item3.next = NULL;         Relay_Item3.prev = &Relay_Item2;
    RelayMenu.first_item = &Relay_Item1;

    // Wire up System Menu
    Sys_Item1.next = &Sys_Item2; Sys_Item1.prev = NULL;
    Sys_Item2.next = NULL;       Sys_Item2.prev = &Sys_Item1;
    SystemMenu.first_item = &Sys_Item1;

    // Set initial engine pointers
    current_menu = &MainMenu;
    current_item = current_menu->first_item;
    top_display_item = current_menu->first_item;
    cursor_row = 1;
    current_state = STATE_WELCOME;
    active_action_func = NULL;
    welcome_char_idx = 0;
    welcome_timer = 0;

    // Non-blocking start: clear display and let menu_update type smoothly
    lcd_clear();
}

// ==========================================
// 5. SCREEN RENDERING (20x4 Viewport)
// ==========================================
void menu_draw(void) {
    // Row 0: Title (Blinking if root menu, or category title if child)
    lcd_set_cursor(0, 0);
    if (current_menu == &MainMenu && !blink_on) {
        lcd_send_string("                    ");
    } else {
        char buf[21];
        uint8_t len = 0;
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
        while (len < 20) buf[len++] = ' ';
        buf[20] = '\0';
        lcd_send_string(buf);
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
        lcd_set_cursor(r, 0);
        if (temp != NULL) {
            lcd_send_data((r == cursor_row) ? '>' : ' ');
            char buf[20];
            uint8_t len = 0;
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
            while (len < 19) buf[len++] = ' ';
            buf[19] = '\0';
            lcd_send_string(buf);
            temp = temp->next;
        } else {
            lcd_send_string("                    ");
        }
    }
}

// ==========================================
// 6. NAVIGATION FUNCTIONS
// ==========================================
void menu_down(void) {
    if (current_item && current_item->next != NULL) {
        current_item = current_item->next;
        if (cursor_row < 3) {
            cursor_row++;
        } else {
            top_display_item = top_display_item->next;
        }
        menu_draw();
    }
}

void menu_up(void) {
    if (current_item && current_item->prev != NULL) {
        current_item = current_item->prev;
        if (cursor_row > 1) {
            cursor_row--;
        } else {
            top_display_item = top_display_item->prev;
        }
        menu_draw();
    }
}

void menu_enter(void) {
    if (current_item == NULL) return;
    if (current_item->child_menu != NULL) {
        current_menu = current_item->child_menu;
        current_item = current_menu->first_item;
        top_display_item = current_menu->first_item;
        cursor_row = 1;
        lcd_clear();
        menu_draw();
    } else if (current_item->action != NULL) {
        current_state = STATE_RUNNING;
        active_action_func = current_item->action;
        action_tick = 0;
        lcd_clear();
        active_action_func(); // render initial action view
    }
}

void menu_back(void) {
    if (current_menu->parent_menu != NULL) {
        // Return to parent menu
        current_menu = current_menu->parent_menu;
        current_item = current_menu->first_item;
        top_display_item = current_menu->first_item;
        cursor_row = 1;
        lcd_clear();
        menu_draw();
    } else {
        // At Root Main Menu -> Return to Welcome Screen!
        current_state = STATE_WELCOME;
        welcome_char_idx = 0;
        welcome_timer = 0;
        lcd_clear();
    }
}

// ==========================================
// 7. PERIODIC ENGINE TICK
// ==========================================
void menu_update(void) {
    uint8_t btns = button_triggered();

    // 1. GLOBAL SHORTCUT: BTN1 is the EXIT button -> Returns to Welcome Screen from ANYWHERE
    if (btns & BTN_BIT_1) {
        current_state = STATE_WELCOME;
        active_action_func = NULL;
        current_menu = &MainMenu;
        current_item = current_menu->first_item;
        top_display_item = current_menu->first_item;
        cursor_row = 1;
        welcome_char_idx = 0;
        welcome_timer = 0;
        lcd_clear();
        return;
    }

    // 2. STATE_WELCOME: Non-blocking typewriter animation + instant button wake-up
    if (current_state == STATE_WELCOME) {
        // If ANY button is pressed at any time (even mid-typing), enter Main Menu immediately!
        if (btns != 0) {
            current_state = STATE_MENU;
            current_menu = &MainMenu;
            current_item = current_menu->first_item;
            top_display_item = current_menu->first_item;
            cursor_row = 1;
            blink_counter = 0;
            blink_on = 1;
            lcd_clear();
            menu_draw();
            return;
        }

        // Non-blocking character-by-character typewriter effect:
        const char *welcome_l1 = "HI YOU";
        const char *welcome_l2 = "Press any button";

        welcome_timer++;
        if (welcome_timer >= 3) { // 3 x 10ms = 30ms per character
            welcome_timer = 0;

            if (welcome_char_idx < 6) {
                // Line 1: Type "HI YOU" centered at col 5
                lcd_set_cursor(0, 5 + welcome_char_idx);
                lcd_send_data(welcome_l1[welcome_char_idx]);
                welcome_char_idx++;
            } else if (welcome_char_idx < 6 + 16) {
                // Line 2: Type "Press any button" at col 0
                uint8_t l2_idx = welcome_char_idx - 6;
                lcd_set_cursor(1, l2_idx);
                lcd_send_data(welcome_l2[l2_idx]);
                welcome_char_idx++;
            }
        }
        return;
    }

    // 3. STATE_RUNNING: Inside an active action
    if (current_state == STATE_RUNNING) {
        if (btns & BTN_BIT_LEFT) {
            // LEFT exits the action and returns to the menu!
            current_state = STATE_MENU;
            active_action_func = NULL;
            lcd_clear();
            menu_draw();
            return;
        }

        // Periodic action tick (e.g. update count or time every 100ms)
        if (active_action_func) {
            action_tick++;
            if (action_tick >= 10) {
                action_tick = 0;
                active_action_func();
            }
        }
        return;
    }

    // 4. STATE_MENU: Menu Navigation
    if (current_state == STATE_MENU) {
        if (btns & BTN_BIT_DOWN) {
            menu_down();
        }
        else if (btns & BTN_BIT_UP) {
            menu_up();
        }
        else if ((btns & BTN_BIT_GO) || (btns & BTN_BIT_RIGHT)) {
            menu_enter();
        }
        else if (btns & BTN_BIT_LEFT) {
            menu_back();
        }

        // Header blinking timer on root menu (smooth, zero-flicker title blink)
        if (current_menu == &MainMenu) {
            blink_counter++;
            if (blink_counter >= 30) { // 30 * 10ms = 300ms
                blink_counter = 0;
                blink_on = !blink_on;
                lcd_set_cursor(0, 0);
                if (!blink_on) {
                    lcd_send_string("                    ");
                } else {
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}

// ==========================================
// 8. ACTION IMPLEMENTATIONS
// ==========================================
static void action_7seg_time(void) {
    sim_clock_time++;
    if ((sim_clock_time % 100) >= 60) {
        sim_clock_time += 40;
    }
    seg7_set_number(sim_clock_time);

    lcd_set_cursor(0, 0);
    lcd_send_string("=== CURRENT TIME ===");
    lcd_set_cursor(1, 0);
    lcd_send_string("DISPLAYING ON 7-SEG ");
    lcd_set_cursor(2, 0);
    lcd_send_string("HH:MM:SS RUNNING... ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_7seg_countup(void) {
    count_val++;
    seg7_set_number(count_val);

    lcd_set_cursor(0, 0);
    lcd_send_string("=== COUNT UP MODE ==");
    lcd_set_cursor(1, 0);
    lcd_send_string("DISPLAYING ON 7-SEG ");
    lcd_set_cursor(2, 0);
    lcd_send_string("COUNTER INCREASING  ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_7seg_mode3(void) {
    seg7_set_number(888888);

    lcd_set_cursor(0, 0);
    lcd_send_string("=== 7-SEG MODE 3 ===");
    lcd_set_cursor(1, 0);
    lcd_send_string("ALL DIGITS SET TO 8 ");
    lcd_set_cursor(2, 0);
    lcd_send_string("                    ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_relay1(void) {
    relay_state ^= 0x01;
    RELAYS = relay_state;

    lcd_set_cursor(0, 0);
    lcd_send_string("=== RELAY 1 TOGGLE =");
    lcd_set_cursor(1, 0);
    if (relay_state & 0x01) {
        lcd_send_string("STATUS: [ ON  ]     ");
    } else {
        lcd_send_string("STATUS: [ OFF ]     ");
    }
    lcd_set_cursor(2, 0);
    lcd_send_string("                    ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_relay2(void) {
    relay_state ^= 0x02;
    RELAYS = relay_state;

    lcd_set_cursor(0, 0);
    lcd_send_string("=== RELAY 2 TOGGLE =");
    lcd_set_cursor(1, 0);
    if (relay_state & 0x02) {
        lcd_send_string("STATUS: [ ON  ]     ");
    } else {
        lcd_send_string("STATUS: [ OFF ]     ");
    }
    lcd_set_cursor(2, 0);
    lcd_send_string("                    ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_relay_all_off(void) {
    relay_state = 0x00;
    RELAYS = relay_state;

    lcd_set_cursor(0, 0);
    lcd_send_string("=== ALL RELAYS =====");
    lcd_set_cursor(1, 0);
    lcd_send_string("STATUS: ALL TURNED  ");
    lcd_set_cursor(2, 0);
    lcd_send_string("OFF SUCCESSFULLY    ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_version(void) {
    lcd_set_cursor(0, 0);
    lcd_send_string("=== SYSTEM INFO ====");
    lcd_set_cursor(1, 0);
    lcd_send_string("FIRMWARE: V2.0 FINAL");
    lcd_set_cursor(2, 0);
    lcd_send_string("BUILD DATE: OCT 2026");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_about(void) {
    lcd_set_cursor(0, 0);
    lcd_send_string("=== ATMEGA128A =====");
    lcd_set_cursor(1, 0);
    lcd_send_string("16MHZ EXT MEM BUS   ");
    lcd_set_cursor(2, 0);
    lcd_send_string("SCHMITT TRIGGER IN  ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}
