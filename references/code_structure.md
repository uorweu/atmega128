# PROJECT 01 nested linked-list menu

Build with `make` and flash `output/main.hex`. The separate `make test`
target still builds src/test/test.c; ongoing main-project work is in src/main.

## File responsibilities

| File | Responsibility |
| --- | --- |
| src/main/main.c | Hardware startup, simple polling loop, welcome/menu state and button dispatch |
| src/app/welcome.c | Welcome screen and scrolling members; no interrupts |
| src/app/menu.h | Menu and MenuItem structures plus navigation API |
| src/app/menu.c | Menu tree definitions, linked-list navigation, list drawing, callback dispatch |
| src/app/7SLED.c | Segment scanning/encoding and the four LED action callbacks |
| src/app/relay.c | Relay outputs/buzzer and the eight relay ON/OFF action callbacks |
| src/app/buttons.c | Button sampling, new presses, and navigation repeats |
| src/drivers/lcd.c | Reusable LCD commands, cursor, characters, strings, and padded lines |
| src/common/define.h | Hardware addresses and definitions |

This follows ../exam_atmega128: main dispatches buttons to menu functions,
and menu items call actions implemented by the device modules. There is no
application.c wrapper and main does not select device operations itself.

## Tree

```text
DEVICES
  7-SEGMENT LED
    DISPLAY 0000
    DISPLAY 9999
    INCREASE
    DECREASE
  RELAY
    RELAY 1
      ON
      OFF
    RELAY 2
      ON
      OFF
    RELAY 3
      ON
      OFF
    RELAY 4
      ON
      OFF
```

## Links and callbacks

MenuItem has text, next/prev sibling pointers, a child_menu pointer, an action
function pointer, and an optional input callback. Menu has a title, first_item,
parent_menu, and selected item. All nodes use static storage; no malloc is used.

menu_init() links the lists and parents. Arrays hold the nodes in memory, but
navigation follows next/prev pointers. menu_draw() traverses those links to
render the selected entry within the three available list rows.

- menu_up()/menu_down(): follow the previous/next link.
- menu_enter(): open child_menu or invoke the item's action callback.
- menu_back(): leave an action screen, then follow parent_menu; return zero
  when already at DEVICES so main can return to the welcome screen.
- menu_action_active(): tell main whether an action screen is open.
- menu_action_input(pressed): forward new presses to its optional input handler.

For example, the INCREASE item points to action_seg_increase() and
action_seg_input() in 7SLED.c. Enter initializes the value to zero and displays
it. While that screen is open, UP presses reach the input callback; menu
selection does not move. This extension preserves manual counting rather than
changing the value once for every GO press as the old exam application did.

Each relay ON/OFF item points to a named action in relay.c. That callback calls
relay_on()/relay_off() for its channel and draws the status screen using LCD
functions. Merely entering a relay submenu does not switch an output.

## Main loop

Like the exam project, main waits with `_delay_ms(10)`, reads buttons and dispatches. There is no Timer1 scheduler or clock dependency in the main firmware:

```c
button_update();
dispatch_buttons(button_pressed(), button_triggered());
```

During the welcome animation, any new button opens DEVICES. In the menu,
UP/DOWN call menu_up()/menu_down(), GO/RIGHT calls menu_enter(), LEFT calls
menu_back(), and BTN1 returns to welcome. On an action screen, new presses
are forwarded through menu_action_input().

The menu definitions and callback bindings belong in menu.c. Add device
behavior in its device module and declare the callback in that module's header.
For a new submenu, add its Menu and MenuItem nodes and link_menu() call in
menu_init(). Main's button dispatch needs no new device-specific branch.

## Preserved behavior and verification

LCD layout is unchanged. Welcome timing uses 25 polling iterations per step
and 100 at each endpoint (approximately 250 ms and 1 second, plus LCD/ISR overhead).
Timer0 still refreshes the multiplexed digits; Timer2 still drives the buzzer.
The optional clock tick is enabled only for legacy diagnostics. Four-digit LED actions use the rightmost four of eight digits, clamp
to 0000..9999, and respond once per new press. Navigation preserves LED/relay
outputs. All four relays remain active HIGH; relay 1 retains its buzzer linkage.
Shared-bus definitions and wiring are unchanged.

Both firmware targets build. Sanitized host checks pass for list links/nesting,
all eight inputs, fourth-item scrolling, back/exit, LED counting/bounds, four
independent relay callbacks, segment scanning/clock, and buzzer timing.
Physical-board operation remains to be checked by flashing output/main.hex.
