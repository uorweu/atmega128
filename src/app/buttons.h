#ifndef BUTTONS_H
#define BUTTONS_H

// debine buttons
#define BUTTON_LEFT 0
#define BUTTON_RIGHT 1
#define BUTTON_UP 2
#define BUTTON_DOWN 3
#define BUTTON_GO 4
#define BUTTON_1 5
#define BUTTON_2 6 
#define BUTTON_3 7
#define BUTTON_NONE 255

// bit mask 
#define BTN_BIT_LEFT (1 << 0)
#define BTN_BIT_RIGHT (1 << 1)
#define BTN_BIT_UP (1 << 2)
#define BTN_BIT_DOWN (1 << 3)
#define BTN_BIT_GO (1 << 4)
#define BTN_BIT_1 (1 << 5)
#define BTN_BIT_2 (1 << 6)
#define BTN_BIT_3 (1 << 7)

void button_update(void);
uint8_t button_pressed(void);
uint8_t button_held(void);
uint8_t button_state(void);
uint8_t button_triggered(void);

#endif


