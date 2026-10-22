#ifndef MENU_H
#define MENU_H
#include <stdint.h>

typedef struct Menu Menu;
typedef struct MenuItem MenuItem;

struct MenuItem {
    const char *text;
    MenuItem *next;
    MenuItem *prev;
    Menu *child_menu;
    void (*action)(void);
    // Optional new-press handler while this action screen is open.
    void (*input)(uint8_t pressed);
};

struct Menu {
    const char *title;
    MenuItem *first_item;
    Menu *parent_menu;
    MenuItem *selected;
};

void menu_init(void);
void menu_draw(void);
void menu_up(void);
void menu_down(void);
void menu_enter(void);
// 1 = returned to a menu; 0 = already at the root.
uint8_t menu_back(void);
uint8_t menu_action_active(void);
void menu_action_input(uint8_t pressed);
#endif
