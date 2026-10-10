#ifndef DEFINE_H
#define DEFINE_H
#include <stdint.h>
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
#define READ_BUTTONS (*(uint8_t *)(&BUTTON_REG_BITS)) = *(volatile uint8_t *)(EXTERNAL_MEM + CSEL0)
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

// LCD 
#define LCD_DATA_REG (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL1))
#define LCD_CMD_REG (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL2))

// 7-SEGMENTS LED
#define LED_7CONTROL (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL3))
#define LED_7DATA (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL4))

// RELAYS
#define RELAYS (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL5))

// Look up table for the commman cathod 7SLED
static const uint8_t SEGMENT_MAP[16] = {
    0x3F, // 0
    0x06, // 1
    0x5B, // 2
    0x4F, // 3
    0x66, // 4
    0x6D, // 5
    0x7D, // 6
    0x07, // 7
    0x7F, // 8
    0x6F, // 9
    0x77, // A
    0x7C, // b
    0x39, // C
    0x5E, // d
    0x79, // E
    0x71  // F
};
#endif
