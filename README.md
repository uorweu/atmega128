# ATmega128A memory-mapped I/O project

## Restored firmware

The 0–9 diagnostic passed on the physical displays after the final a/f
mapping correction. `src/test/test.c` is restored to the clock/menu test.
The confirmed physical address and segment mappings are retained.

- `make test` produces `output/test.hex`: real LCD, buttons, six-digit
  seven-segment display, software clock, and linked-list menu. Relay actions
  remain simulated and do not drive CSEL5.
- `make` produces `output/main.hex`: main application with real relay
  outputs as well as the LCD, buttons, clock, and seven-segment display.

Build with avr-gcc, avr-libc, and make in Linux/WSL. Firmware assumes an
actual 16 MHz CPU and a 20x4 HD44780-compatible LCD. F_CPU defines software
timing; it does not set the physical clock or fuses.

## Current wiring and map

PG0 = WR_L, PG1 = RD_L, PG2 = ALE, PG3 = LCD E, PG4 = dedicated LCD RS.
RS is disconnected from address-latch A0. LCD R/W is grounded.
Button latch U4 OE connects to PG1/RD_L with a 10 kΩ pull-up to +5 V;
LE is NOR(RD_L, CSEL0). Do not ground U4 OE. Six active-HIGH button inputs
are fitted; unused U4 D6/D7 inputs are grounded, not the shared data bus.

| Register | Address | Function |
|---|---|---|
| CSEL0 | 0x1100 | Buttons: LEFT, RIGHT, UP, DOWN, GO, BTN1 on bits 0..5 |
| CSEL1 | 0x1101 | LCD character-data latch write |
| CSEL2 | 0x1102 | LCD command latch write |
| CSEL3 | 0x1103 | Seven-segment data, corrected from physical testing |
| CSEL4 | 0x1104 | Digit enables, bits 0..5; Q0 leftmost per schematic |
| CSEL5 | 0x1105 | Relay outputs, active only in main firmware |

Common-cathode segments use active-HIGH drive. Final segment-latch mapping:

| Output / data bit | Q0 | Q1 | Q2 | Q3 | Q4 | Q5 | Q6 | Q7 |
|---|---|---|---|---|---|---|---|---|
| Segment | DP | g | f | e | d | c | b | a |

An 8 without DP is FE; with DP it is FF. All displays share like-named
segment lines through the segment resistors. Each digit's common cathode
connects separately to its own transistor collector. MCU data-bus D0..D7
connect to latch D0..D7; segment connections come from the Q outputs.

## Menu and clock

Press/release any button at welcome to open the main menu.
UP/DOWN select, GO/RIGHT enter, LEFT returns, BTN1 exits to welcome.

Select `7-SEGMENT LED` -> `CURRENT TIME` to show HH.MM.SS. The software
clock starts at 12:00:00 after reset and continues running in the background.
It is not a battery-backed or synchronized wall clock. Decimal points are
enabled after digit positions 2 and 4 (one-based, left to right).

`ADJUST CLOCK`: LEFT/RIGHT select a digit; UP/DOWN change its value;
GO saves and resumes the clock; BTN1 cancels and returns to welcome.
Values are clamped to 23:59:59. `COUNT UP` and `MODE 4 (888888)` also drive
the physical seven-segment display. The display starts blank until a function
is selected and retains its last buffer when an action is exited.

In the test, Timer0 scans digits every 2 ms and supplies the only one-second
clock tick (500 interrupts). Timer1 supplies 10 ms button/menu ticks.
LCD transfers protect RS/data/E against ISR bus accesses. Multi-digit
clock-buffer updates are atomic against scanning. The main application
uses its existing delay-based menu loop and Timer0 scanning/clock tick.

## Saved diagnostics and remaining checks

The successful 0–9 source is saved at `tmp/verified_0_to_9_test.c.saved`.
Other diagnostic sources remain in tmp; they are excluded from normal builds.
The user confirmed numerical glyphs on the physical displays. The restored
multiplexed clock/menu should now be verified on the board. Earlier rapid-
reset LCD corruption remains separately recorded; successful glyph tests
alone do not establish that reset reliability is solved. The LCD recovered
after an accidental VCC-to-GND short and restart; no permanent damage was
established.

See [debugging notes](gpt_note.md) and
[real board versus Proteus](references/real_board_vs_proteus.md) for history.

## Host regression checks

These use simulated registers and outputs; they do not verify electrical
timing or physical interrupt latency.

```sh
gcc -std=c99 -Wall -Wextra -Werror -fsanitize=address,undefined \
  -Isrc/app -Isrc/common -Isrc/drivers \
  tests/menu_buttons_test.c src/test/menu_test_outputs.c \
  -o /tmp/atmega-menu-test
/tmp/atmega-menu-test

gcc -std=c99 -Wall -Wextra -Werror -fsanitize=address,undefined \
  -Itests/support -Isrc/app -Isrc/common \
  tests/clock_display_test.c -o /tmp/atmega-clock-test
/tmp/atmega-clock-test
```
