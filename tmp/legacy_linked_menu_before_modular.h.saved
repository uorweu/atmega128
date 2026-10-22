#ifndef MENU_H
#define MENU_H

#include <stdint.h>
#include <stddef.h>

typedef struct Menu Menu;
typedef struct MenuItem MenuItem;

struct MenuItem {
    char text[21];
    MenuItem *next;
    MenuItem *prev;
    Menu *child_menu;
    void (*action)(void);
};

struct Menu {
    char title[21];
    MenuItem *first_item;
    Menu *parent_menu;
};

void menu_init(void);
void menu_update(void);
void menu_draw(void);
void menu_down(void);
void menu_up(void);
void menu_enter(void);
void menu_back(void);

#endif // MENU_H
