#ifndef DEFINE_H
#define DEFINE_H
#include <stdint.h>
#include "io_bus.h"
#define F_CPU 16000000UL

#define EXTERNAL_MEM 0x1100
#define CSEL0 0
#define CSEL1 1
#define CSEL2 2
#define CSEL3 3
#define CSEL4 4
#define CSEL5 5
#define CSEL6 6
#define CSEL7 7
#define CSEL8 8
#define CSEL9 9
#define CSEL10 10
#define CSEL11 11
#define CSEL12 12
#define CSEL13 13
#define CSEL14 14
#define CSEL15 15

// BUTTONS macro
typedef struct {
  uint8_t LEFT: 1;
  uint8_t RIGHT: 1;
  uint8_t UP: 1;
  uint8_t DOWN: 1;
  uint8_t GO: 1;
  uint8_t BTN1: 1;
  uint8_t BTN2: 1;
  uint8_t BTN3: 1;
} BUTTON_REG_BITS;

extern BUTTON_REG_BITS buttons;

#define READ_BUTTONS (*(uint8_t *)(&buttons)) = io_bus_read(EXTERNAL_MEM + CSEL0)
// LCD 
#define LCD_DATA_REG (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL1))
#define LCD_CMD_REG (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL2))

// 7-SEGMENTS LED: physical-board static test confirmed these select functions.
#define LED_7CONTROL (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL4))
#define LED_7DATA (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL3))

// RELAYS
#define RELAYS (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL5))

// CC segment order inferred from the latest board glyphs: dp, g, f, e,
// bit 4 d, 5 c, 6 a, 7 b. Patterns below exclude the decimal point.
static const uint8_t SEGMENT_MAP[16] = {
    0xFC, // 0: a b c d e f
    0xA0, // 1: b c
    0xDA, // 2: a b d e g
    0xF2, // 3: a b c d g
    0xA6, // 4: b c f g
    0x76, // 5: a c d f g
    0x7E, // 6: a c d e f g
    0xE0, // 7: a b c
    0xFE, // 8: a b c d e f g
    0xF6, // 9: a b c d f g
    0xEE, // A: a b c e f g
    0x3E, // b: c d e f g
    0x5C, // C: a d e f
    0xBA, // d: b c d e g
    0x5E, // E: a d e f g
    0x4E  // F: a e f g
};
#endif
