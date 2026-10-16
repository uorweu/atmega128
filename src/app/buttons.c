#include <stdint.h>
#include "define.h"
#include "buttons.h"

// Since the hardware has RC filters (10k + 470nF) and 74HC14 Schmitt triggers,
// the input signal is already cleanly debounced in hardware.
// We trigger immediately on the rising edge with zero software lag!

#define HOLD_THRESHOLD    35   // 35 x 10ms = 350ms before auto-repeat kicks in
#define HOLD_REPEAT_RATE   8   // then repeats every 8 x 10ms = 80ms

BUTTON_REG_BITS buttons;

static uint8_t last_raw    = 0x00;
static uint8_t press_event = 0x00;
static uint8_t held_event  = 0x00;
static uint8_t hold_cnt[8] = {0};

void button_update(void) {
  READ_BUTTONS;
  uint8_t raw = *(uint8_t *)(&buttons);

  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
  held_event  = 0x00;

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
    uint8_t bit = (1 << i);
    if (raw & bit) {
      if (hold_cnt[i] < 255) hold_cnt[i]++;
      if (hold_cnt[i] >= HOLD_THRESHOLD) {
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
          held_event |= bit;
        }
      }
    } else {
      hold_cnt[i] = 0;
    }
  }

  last_raw = raw;
}

uint8_t button_pressed(void)   { return press_event; }
uint8_t button_held(void)      { return held_event;  }
uint8_t button_state(void)     { return last_raw;    }
uint8_t button_triggered(void) { return press_event | held_event; }
