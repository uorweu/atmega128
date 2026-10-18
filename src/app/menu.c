#include "menu.h"
#include "buttons.h"
#include "lcd.h"
#include "7SLED.h"
#include "relay.h"
#include "clock.h"
#include "define.h"
#include <stddef.h>

// Forward declarations of action functions
static void action_7seg_time(void);
static void action_7seg_adjust(void);
static void action_7seg_countup(void);
static void action_7seg_mode4(void);
static void action_relay_0_2(void);
static void action_relay_1_3(void);
static void action_relay_all_on(void);
static void action_relay_all_off(void);
static void action_version(void);
static void action_about(void);

// Helper functions for adjust mode
static void adjust_draw_lcd(void);
static void adjust_update_7seg(void);

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
MenuItem Seg_Item1 = {"1. CURRENT TIME",    NULL, NULL, NULL, action_7seg_time};
MenuItem Seg_Item2 = {"2. ADJUST CLOCK",    NULL, NULL, NULL, action_7seg_adjust};
MenuItem Seg_Item3 = {"3. COUNT UP",        NULL, NULL, NULL, action_7seg_countup};
MenuItem Seg_Item4 = {"4. MODE 4 (888888)", NULL, NULL, NULL, action_7seg_mode4};

// Relay Menu Items (RL0 to RL3 on CSEL5)
MenuItem Relay_Item1 = {"1. RELAY 0 & 2 ON", NULL, NULL, NULL, action_relay_0_2};
MenuItem Relay_Item2 = {"2. RELAY 1 & 3 ON", NULL, NULL, NULL, action_relay_1_3};
MenuItem Relay_Item3 = {"3. ALL RELAYS ON",  NULL, NULL, NULL, action_relay_all_on};
MenuItem Relay_Item4 = {"4. ALL RELAYS OFF", NULL, NULL, NULL, action_relay_all_off};

// System Menu Items
MenuItem Sys_Item1 = {"1. VERSION 2.0",    NULL, NULL, NULL, action_version};
MenuItem Sys_Item2 = {"2. ATMEGA128A MCU", NULL, NULL, NULL, action_about};

// ==========================================
// 3. SYSTEM VARIABLES (The Engine)
// ==========================================
typedef enum {
    STATE_WELCOME,
    STATE_MENU,
    STATE_RUNNING,
    STATE_ADJUST_CLOCK
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

static uint8_t welcome_char_idx = 0;
static uint8_t welcome_timer = 0;

// Variables for count-up
static uint16_t count_val = 0;

// Variables for clock adjust mode
static uint8_t adjust_digits[6] = {1, 2, 0, 0, 0, 0};
static uint8_t adjust_pos = 0; // 0..5 (0: H1, 1: H0, 2: M1, 3: M0, 4: S1, 5: S0)
static uint8_t adjust_blink_phase = 1;
static uint8_t adjust_blink_timer = 0;

// ==========================================
// 4. INITIALIZATION
// ==========================================
void menu_init(void) {
    // Wire up Main Menu
    Main_Item1.next = &Main_Item2; Main_Item1.prev = NULL;
    Main_Item2.next = &Main_Item3; Main_Item2.prev = &Main_Item1;
    Main_Item3.next = NULL;        Main_Item3.prev = &Main_Item2;
    MainMenu.first_item = &Main_Item1;

    // Wire up 7-SEG Menu (4 items)
    Seg_Item1.next = &Seg_Item2; Seg_Item1.prev = NULL;
    Seg_Item2.next = &Seg_Item3; Seg_Item2.prev = &Seg_Item1;
    Seg_Item3.next = &Seg_Item4; Seg_Item3.prev = &Seg_Item2;
    Seg_Item4.next = NULL;       Seg_Item4.prev = &Seg_Item3;
    SegMenu.first_item = &Seg_Item1;

    // Wire up Relay Menu (4 items)
    Relay_Item1.next = &Relay_Item2; Relay_Item1.prev = NULL;
    Relay_Item2.next = &Relay_Item3; Relay_Item2.prev = &Relay_Item1;
    Relay_Item3.next = &Relay_Item4; Relay_Item3.prev = &Relay_Item2;
    Relay_Item4.next = NULL;         Relay_Item4.prev = &Relay_Item3;
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

    blink_counter = 0;
    blink_on = 1;
    action_tick = 0;
    count_val = 0;

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
    uint8_t pressed = button_pressed();

    // 1. GLOBAL SHORTCUT: BTN1 is the EXIT button -> Returns to Welcome Screen from ANYWHERE
    if ((pressed & BTN_BIT_1) && current_state != STATE_WELCOME) {
        if (current_state == STATE_ADJUST_CLOCK) {
            clock_start(); // ensure clock keeps ticking if canceled
        }
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
        if (pressed != 0) {
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

        const char *welcome_l1 = "HI YOU";
        const char *welcome_l2 = "Press any button";

        welcome_timer++;
        if (welcome_timer >= 3) { // 3 x 10ms = 30ms per character
            welcome_timer = 0;

            if (welcome_char_idx < 6) {
                lcd_set_cursor(0, 5 + welcome_char_idx);
                lcd_send_data(welcome_l1[welcome_char_idx]);
                welcome_char_idx++;
            } else if (welcome_char_idx < 6 + 16) {
                uint8_t l2_idx = welcome_char_idx - 6;
                lcd_set_cursor(1, l2_idx);
                lcd_send_data(welcome_l2[l2_idx]);
                welcome_char_idx++;
            }
        }
        return;
    }

    // 3. STATE_ADJUST_CLOCK: Dedicated Clock Adjust Mode
    if (current_state == STATE_ADJUST_CLOCK) {
        // --- Navigation: LEFT / RIGHT selects digit 0 to 5 ---
        if (btns & BTN_BIT_LEFT) {
            adjust_pos = (adjust_pos == 0) ? 5 : adjust_pos - 1;
            adjust_blink_phase = 1;
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_RIGHT) {
            adjust_pos = (adjust_pos == 5) ? 0 : adjust_pos + 1;
            adjust_blink_phase = 1;
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        // --- Adjust Value: UP / DOWN changes number 0 to 9 ---
        else if (btns & BTN_BIT_UP) {
            adjust_digits[adjust_pos] = (adjust_digits[adjust_pos] + 1) % 10;
            adjust_blink_phase = 1;
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_DOWN) {
            adjust_digits[adjust_pos] = (adjust_digits[adjust_pos] == 0) ? 9 : adjust_digits[adjust_pos] - 1;
            adjust_blink_phase = 1;
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        // --- Confirm: GO saves time and returns to menu ---
        else if (pressed & BTN_BIT_GO) {
            uint8_t h = adjust_digits[0] * 10 + adjust_digits[1];
            uint8_t m = adjust_digits[2] * 10 + adjust_digits[3];
            uint8_t s = adjust_digits[4] * 10 + adjust_digits[5];
            if (h > 23) h = 23;
            if (m > 59) m = 59;
            if (s > 59) s = 59;
            clock_set_time(h, m, s);
            clock_start();

            current_state = STATE_MENU;
            lcd_clear();
            menu_draw();
            return;
        }

        // --- 7-Segment Selected Digit Blinking (every 200ms) ---
        adjust_blink_timer++;
        if (adjust_blink_timer >= 20) { // 20 * 10ms = 200ms
            adjust_blink_timer = 0;
            adjust_blink_phase = !adjust_blink_phase;
            adjust_update_7seg();
        }
        return;
    }

    // 4. STATE_RUNNING: Inside an active action
    if (current_state == STATE_RUNNING) {
        if (pressed & BTN_BIT_LEFT) {
            // LEFT exits the action and returns to the menu!
            current_state = STATE_MENU;
            active_action_func = NULL;
            lcd_clear();
            menu_draw();
            return;
        }

        // Periodic action tick (e.g. update count or time display every 100ms)
        if (active_action_func) {
            action_tick++;
            if (action_tick >= 10) {
                action_tick = 0;
                active_action_func();
            }
        }
        return;
    }

    // 5. STATE_MENU: Menu Navigation
    if (current_state == STATE_MENU) {
        if (btns & BTN_BIT_DOWN) {
            menu_down();
        }
        else if (btns & BTN_BIT_UP) {
            menu_up();
        }
        else if ((pressed & BTN_BIT_GO) || (pressed & BTN_BIT_RIGHT)) {
            menu_enter();
        }
        else if (pressed & BTN_BIT_LEFT) {
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

// --- Mode 1: Display Current Running Real-Time Clock ---
static void action_7seg_time(void) {
    ClockTime_t ct;
    clock_get_time(&ct);
    clock_update_display(); // Updates 7-segment display with HH.MM.SS (DPs enabled!)

    lcd_set_cursor(0, 0);
    lcd_send_string("=== CURRENT TIME ===");

    char row1[21];
    row1[0] = ' '; row1[1] = 'T'; row1[2] = 'I'; row1[3] = 'M'; row1[4] = 'E'; row1[5] = ':';
    row1[6] = ' '; row1[7] = ' ';
    row1[8] = '0' + (ct.hours / 10);
    row1[9] = '0' + (ct.hours % 10);
    row1[10] = ' '; row1[11] = ':'; row1[12] = ' ';
    row1[13] = '0' + (ct.minutes / 10);
    row1[14] = '0' + (ct.minutes % 10);
    row1[15] = ' '; row1[16] = ':'; row1[17] = ' ';
    row1[18] = '0' + (ct.seconds / 10);
    row1[19] = '0' + (ct.seconds % 10);
    row1[20] = '\0';
    lcd_set_cursor(1, 0);
    lcd_send_string(row1);

    lcd_set_cursor(2, 0);
    lcd_send_string("REAL-TIME CLOCK RUN ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

// --- Mode 2: Adjust Clock Function ---
static void action_7seg_adjust(void) {
    current_state = STATE_ADJUST_CLOCK;
    clock_pause(); // Pause clock ticks during manual editing

    ClockTime_t ct;
    clock_get_time(&ct);
    adjust_digits[0] = ct.hours / 10;
    adjust_digits[1] = ct.hours % 10;
    adjust_digits[2] = ct.minutes / 10;
    adjust_digits[3] = ct.minutes % 10;
    adjust_digits[4] = ct.seconds / 10;
    adjust_digits[5] = ct.seconds % 10;

    adjust_pos = 0; // Start at Digit 0 (Hours tens)
    adjust_blink_phase = 1;
    adjust_blink_timer = 0;

    lcd_clear();
    adjust_draw_lcd();
    adjust_update_7seg();
}

static void adjust_draw_lcd(void) {
    lcd_set_cursor(0, 0);
    lcd_send_string("=== ADJUST CLOCK ===");

    // Row 1: " TIME:  HH : MM : SS"
    char row1[21];
    row1[0] = ' '; row1[1] = 'T'; row1[2] = 'I'; row1[3] = 'M'; row1[4] = 'E'; row1[5] = ':';
    row1[6] = ' '; row1[7] = ' ';
    row1[8] = '0' + adjust_digits[0];
    row1[9] = '0' + adjust_digits[1];
    row1[10] = ' '; row1[11] = ':'; row1[12] = ' ';
    row1[13] = '0' + adjust_digits[2];
    row1[14] = '0' + adjust_digits[3];
    row1[15] = ' '; row1[16] = ':'; row1[17] = ' ';
    row1[18] = '0' + adjust_digits[4];
    row1[19] = '0' + adjust_digits[5];
    row1[20] = '\0';
    lcd_set_cursor(1, 0);
    lcd_send_string(row1);

    // Row 2: " CURSOR:        ^   " (Arrow directly beneath the selected digit)
    char row2[21] = " CURSOR:            ";
    static const uint8_t arrow_cols[6] = {8, 9, 13, 14, 18, 19};
    row2[arrow_cols[adjust_pos]] = '^';
    row2[20] = '\0';
    lcd_set_cursor(2, 0);
    lcd_send_string(row2);

    // Row 3: Navigation helpers
    lcd_set_cursor(3, 0);
    lcd_send_string("GO:Save       1:Exit");
}

static void adjust_update_7seg(void) {
    // Decimal points enabled on Digit 1 and Digit 3 to separate HH.MM.SS
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    for (uint8_t i = 0; i < 6; i++) {
        if (i == adjust_pos && !adjust_blink_phase) {
            seg7_set_digit(i, SEG7_BLANK); // Blink off
        } else {
            seg7_set_digit(i, adjust_digits[i]);
        }
    }
}

// --- Mode 3: Count Up ---
static void action_7seg_countup(void) {
    count_val++;
    seg7_set_dp_mask(0x00); // No decimal points in count up
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

// --- Mode 4: Test All 8s ---
static void action_7seg_mode4(void) {
    seg7_set_dp_mask(0x0A); // DPs on for test
    seg7_set_number(888888);

    lcd_set_cursor(0, 0);
    lcd_send_string("=== 7-SEG MODE 4 ===");
    lcd_set_cursor(1, 0);
    lcd_send_string("ALL DIGITS SET TO 8 ");
    lcd_set_cursor(2, 0);
    lcd_send_string("TESTING SEGMENTS    ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

// --- Relay Actions ---
static void action_relay_0_2(void) {
    relay_mode_0_2();

    lcd_set_cursor(0, 0);
    lcd_send_string("=== RELAYS 0 & 2 ===");
    lcd_set_cursor(1, 0);
    lcd_send_string("RL0:ON   RL1:OFF    ");
    lcd_set_cursor(2, 0);
    lcd_send_string("RL2:ON   RL3:OFF    ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_relay_1_3(void) {
    relay_mode_1_3();

    lcd_set_cursor(0, 0);
    lcd_send_string("=== RELAYS 1 & 3 ===");
    lcd_set_cursor(1, 0);
    lcd_send_string("RL0:OFF  RL1:ON     ");
    lcd_set_cursor(2, 0);
    lcd_send_string("RL2:OFF  RL3:ON     ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_relay_all_on(void) {
    relay_all_on();

    lcd_set_cursor(0, 0);
    lcd_send_string("=== ALL RELAYS ON ==");
    lcd_set_cursor(1, 0);
    lcd_send_string("RL0:ON   RL1:ON     ");
    lcd_set_cursor(2, 0);
    lcd_send_string("RL2:ON   RL3:ON     ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_relay_all_off(void) {
    relay_all_off();

    lcd_set_cursor(0, 0);
    lcd_send_string("=== ALL RELAYS OFF =");
    lcd_set_cursor(1, 0);
    lcd_send_string("RL0:OFF  RL1:OFF    ");
    lcd_set_cursor(2, 0);
    lcd_send_string("RL2:OFF  RL3:OFF    ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

// --- System Info Actions ---
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
