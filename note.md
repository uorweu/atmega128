## 2026-10-22: Nested linked-list menu modeled on ../exam_atmega128

Implemented Menu/MenuItem with next/prev, child_menu, parent_menu, and action
callbacks. menu.c defines DEVICE -> LED and RELAY -> relay 1..4 -> ON/OFF,
owns navigation and list drawing, and invokes callbacks in existing device
modules. Main now handles startup, welcome animation, and generic button
dispatch through menu_up/down/enter/back. No application wrapper was added.

Moved four LED actions and optional new-press input handling into 7SLED.c,
and named relay ON/OFF action callbacks/status rendering into relay.c.
The input callback preserves UP/DOWN manual counting while an action is open.
All menu nodes use static storage. Back restores the parent's selected item.

Preserved layout, scroll timing, count bounds, active-HIGH relay settings,
relay-1 buzzer linkage, and shared-bus wiring. test.c remains a separate image.
make and make test passed; sanitized host checks passed for linked topology,
nesting, eight buttons/repeats, scrolling, back/exit, real LED and relay callbacks,
clock/display scanning, and buzzer timing. Board testing is still required.
Flash output/main.hex. See references/code_structure.md for the walkthrough.
This supersedes the earlier structure experiments below.

## 2026-10-22: Correct the refactor to compose existing device APIs in main.c

User clarified that the program should remain understandable in main.c and use
existing LCD/button/LED/relay functions, rather than hiding it behind a new
application module. Removed application.c/h, welcome.c/h, and led_modes.c/h
introduced in the previous step. Main now owns startup, screens, animation,
navigation, and action choices and directly calls the existing device APIs.

menu.c now only supplies reusable menu_draw_list(title, items, count, selection).
Added seg7_set_decimal(number, width) to the existing 7SLED driver for zero-padded
right-aligned display with unused digits blank. Kept lcd_write_line in the LCD
driver. Hardware definitions, controls, timing, and relay behavior are retained.
This entry supersedes the immediately following refactor description.
See references/code_structure.md for the corrected walkthrough.

## 2026-10-22: Modular structure for the simpler main project

main.c now only calls application_init() and application_update(). Moved startup
and the 10 ms scheduler into application.c, current screen/navigation logic into
menu.c, welcome animation into welcome.c, and four LED operations into
led_modes.c. Added reusable lcd_write_line() for clipped/padded LCD lines.
The older linked-list clock menu is no longer the active menu implementation.
Saved the pre-refactor main/menu sources in tmp/*before_modular*.saved.

Controls, LCD layout, scroll timing, manual counter bounds, four active-HIGH
relay channels, shared-bus settings, and relay-1 buzzer linkage are preserved.
test.c remains separate; its build excludes application.c to avoid two Timer1
handlers. See references/code_structure.md for a walkthrough and edit locations.

make and make test passed. Host checks with address/undefined-behavior
sanitizers passed for menu/buttons/welcome/LED/four relays, clock/display, and
relay/buzzer behavior. Hardware has not been retested by this refactor.
Flash output/main.hex for the current main project.

## 2026-10-22: Four independent relays exposed in the simpler main menu

Updated src/main/main.c: DEVICE -> RELAY lists relay 1 through relay 4.
Each selection opens its own ON/OFF submenu and status screen, mapped
to Q0..Q3. LEFT returns one level and BTN1 exits to welcome; navigation
does not switch relay outputs. Active-HIGH driver configuration is retained.
The existing relay-1 buzzer linkage is unchanged. test.c remains separate.

make succeeded. A host UI check enabled all four channels in turn and
disabled them individually, verifying preservation of other relay states,
the fourth scrolling entry, status labels, back/exit, and LED/welcome
regressions. Flash output/main.hex for the current main project.
## 2026-10-22: Simpler PROJECT 01 application is now the main project

User confirms the simpler application is the main project. Promoted the
current src/test/test.c implementation into src/main/main.c. Future main
project changes belong in src/main/main.c; use make and output/main.hex.
Kept test.c available separately and saved the previous main source in
tmp/legacy_main_before_simple_project.c.saved.

Retained vertical menus, instruction-free LCD layout, welcome member
scrolling at 250 ms/step with 1-second end pauses, four-digit manual LED
modes, relay ON/OFF and the shared active-HIGH relay configuration.
The old clock/full-menu application is no longer the main entry point.
## 2026-10-22: Four relay channels confirmed active HIGH

User confirms the current relay hardware is high-trigger. Set the default
RELAY_ACTIVE_LOW_MASK to 0x00 for Q0..Q3: physical LOW is OFF, HIGH is ON.
The logical relay API remains 1 = ON. relay_init therefore initializes
all four relay control outputs LOW. This configuration applies to both
main and test builds. No menu, union representation, or buzzer behavior
changed in this step. This supersedes earlier active-LOW module defaults.
## 2026-10-21: Infer swapped a/b segment connections after sync fix

User reports digit selection/sync fixed, but 1 lights a,c; 4 lights a,f,g,c;
6 lights b,c,d,e,f,g; other numerical glyphs are normal. This consistently
indicates the physical a and b connections are swapped relative to the
previous table. The report for 5 repeats g, so its exact segment list is
ambiguous. Swapped only segment-map bits 6/7: Q0..Q7 now represent
dp,g,f,e,d,c,a,b. No digit-select, button, LCD or relay behavior changed.
Updated all 16 glyphs consistently, including hexadecimal characters.
This inference still needs a board check of 1,4,5,6; it does not establish
the unidentified synchronization wiring fix. Main firmware is the image
to flash; the standalone static test remains available separately.
## 2026-10-21: Eight-digit display and reversed transistor order

Updated the driver for eight physical digits. Logical display positions
remain left-to-right, while digit-select outputs run Q7 through Q0.
Segment mapping remains dp,g,f,e,d,c,b,a; CSEL3 is segment data and CSEL4
is digit selection. Timer0 now uses 1 ms slots (125 Hz per digit) with
1000 interrupts per software-clock second. HH.MM.SS is right-aligned on
six digits, with two leading blanks; clock-adjust blinking and decimal
points use the same offset. Mode 4 displays 88888888 and tests all DPs.

Both make test and make succeeded. Host clock/display regression passed
for eight scan positions, physical select order, glyphs, clock rollover,
blanking and number placement; menu/button regression passed. Physical
eight-digit operation still needs confirmation. This supersedes earlier
six-digit / Q0-leftmost / 500 Hz scan descriptions.
## 2026-10-21: Indicator LED affects button signal reading

User-observed hardware behavior: attaching a 5 mm indicator LED directly
to a button signal input to observe whether the button is active prevents
that input from being read correctly through the button latch/data bus.

Do not use a directly connected LED as a logic probe on these button
signal nodes. An LED can load or clamp the node, changing its logic level;
the exact attachment point, LED wiring/polarity, and presence/value of a
series resistor were not recorded, so the electrical cause is not confirmed.
A series resistor is essential for an LED but does not by itself establish
that an indicator will avoid loading this signal. Prefer a high-impedance
multimeter/scope or a buffered indicator when checking button levels.

Record the signal behavior without the indicator attached before changing
firmware or diagnosing the latch as faulty. This observation does not
establish that all previously reported button faults have been resolved.
## 2026-10-19: Restore phone-style melody at user request

Restored the original repeating rising 880/1175/1568 Hz alarm with pauses,
replacing the continuous-tone diagnostic. LCD shows ALARM ON. Relay 1
still supplies steady power; Q4 carries audio. This is a phone-style
approximation, not an exact iPhone recording. The user requested restoration
without explicitly confirming the outcome of the last continuous-tone test.
Earlier silence remains unverified on hardware. Regression checks melody
pitch changes, rests, repeat timing, stop/restart and shared latch outputs.
This section supersedes the continuous-tone description below.
## 2026-10-19: Restore original continuous buzzer diagnostic

User reports both alarm versions remained silent and requests the simple
sound that worked previously. Restored the original Timer2 continuous-tone
driver: nominal 2 kHz (OCR2=62, approximately 1984 Hz), 20 ms settling,
no note table or gaps. Relay 1 ON starts it; OFF/all-off stops it. The LCD
shows TONE ON. Q0 relay control and Q4 buzzer wiring are unchanged.
This supersedes alarm descriptions below while hardware is checked.
Host regression checks sustained toggling for 20,000 interrupts, relay
preservation, settling, and stopping. Physical buzzer result is pending.
## 2026-10-19: Silent melody report; retain working carrier

User reports the original continuous tone worked, but the rising-note alarm
was silent while relay 1 still clicked. The cause is not yet established.
Replaced all 880/1175/1568 Hz notes with the previously working nominal
2 kHz carrier (OCR2=62 at 16 MHz, approximately 1984 Hz). Retained the alarm
cadence, quiet gaps, menu controls, and steady relay power. This is a pulsed
alarm, not an exact iPhone melody. Hardware confirmation is still needed.
Regression now explicitly checks OCR2=62 on every audible alarm burst.
This supersedes the rising-pitch description below.
## 2026-10-18: Relay 1 repeating phone-style alarm

Relay 1 now starts an original rising-note alarm on U13 Q4 after about
20 ms of settling. Three 880/1175/1568 Hz phrases repeat with a long pause;
the whole cycle is about 2.84 seconds. This approximates a phone alarm on a
passive buzzer; it does not reproduce an exact iPhone recording.
Q0 keeps the mechanical relay continuously enabled. Only Q4 changes pitch.
For the active-low buzzer module, quiet gaps hold Q4 HIGH while powered.
Relay 1 OFF / ALL DEVICES OFF disables Timer2 and holds Q4 LOW while the
relay removes module power. Turning ON again restarts the first phrase.
The alarm continues outside the relay LCD screen; LCD now shows ALARM ON.
Notes/durations are configured in alarm_pattern in src/app/relay.c.

Validation: make test and make succeeded. Host tests passed for a full
alarm cycle and its duration, quiet gaps, restart, stop during note/rest,
other relay/reserved-bit preservation, mixed relay polarity, menu buttons,
and clock/display regression. Physical sound quality remains to be checked
on the user's buzzer. This section supersedes the earlier continuous-tone
description; wiring remains the same.
# ATmega128A LCD debugging notes

Date: 2026-10-17
Updated: 2026-10-18

Separate comparison: [Real board versus Proteus](references/real_board_vs_proteus.md).

## Latest status — 2026-10-18 (supersedes historical sections below)

### Current change: four relay-device screens and latch-Q4 buzzer tone

At the user's request, both firmware targets now use the real relay driver
at CSEL5. The previous test relay stubs were moved to
`tmp/retired_relay_test_outputs.c.saved` and excluded from the build.
The menu offers relays 1–4 individually (U13 Q0..Q3), plus ALL DEVICES OFF.
GO toggles, UP turns ON, DOWN turns OFF, LEFT returns. Entering a screen
and leaving it do not change outputs. BTN1 leaves to welcome and retains
states; use the all-off item to stop all devices. No periodic relay toggling.

Relay 1 powers the passive buzzer module via COM/NO; its I/O connects to
U13 Q4 (pin 15), NOT MCU PG4. Default all four relay inputs are active LOW;
`RELAY_ACTIVE_LOW_MASK` permits mixed/bare-transistor active-HIGH channels.
A single retained eight-bit state owns Q0..Q7; all mutations are atomic.
Relay changes preserve Q4 phase; Timer2 changes only Q4. Q5..Q7 remain
reserved and are preserved by both paths.

On relay 1 ON, Timer2 waits approximately 20 ms, then generates nominal
2 kHz / 50% duty on Q4 (about 1984 Hz with the rounded 16 MHz /64 divider).
It does not PWM the relay coil. OFF stops Timer2 and holds Q4 LOW while
relay 1 removes buzzer VCC, to avoid a HIGH signal into an unpowered module.
This assumes relay contacts actually switch module VCC and its signal input
accepts 5 V; an always-powered active buzzer requires different idle behavior.
The exact buzzer module model/ratings have not been independently verified.
Timer0 scanning/clock and Timer1 menu polling are unchanged. Relays are
initialized OFF before LCD delays; reset transients before initialization
are not claimed solved. LCD screens show commands, not contact feedback.

Host checks cover shared-byte preservation, delayed tone/start/stop,
active-low and mixed-polarity states, held GO, individual menu control,
all-off, clock scanning/rollover, and LCD bounds. AVR test/main builds pass.
Physical relay actuation and audible tone await the user's board test.
### Previous status: physical glyphs confirmed, clock/menu restored

The user confirmed that every numeral now displays correctly after the
final a/f lookup-table correction, and requested restoration of the project.
`src/test/test.c` is restored to the physical LCD/button/seven-segment clock
and menu test. The final map remains dp,g,f,e,d,c,b,a (bits 0..7), with
CSEL3 for segment data and CSEL4 for digit enables. The earlier diagnostics
are inactive. The successful 0–9 test source is preserved at
`tmp/verified_0_to_9_test.c.saved`. `make test` builds `output/test.hex`
with simulated relays; `make` builds `output/main.hex` with real relays.
The restored test uses Timer0 scanning/clock ticks and Timer1 menu ticks,
without double-ticking the clock. Numerical glyph operation is confirmed
by the user; restored multiplexed clock operation still needs board testing.
This current status supersedes earlier active-test descriptions below.
### Previous physical adjustment: a/f swapped, numerical test retained

After wiring adjustments the user reported all digits now fail identically,
with 7 -> c,b,f; 4 -> c,b,g,a; 3 -> c,b,g,f,d; 2 -> b,g,d,e,f.
These observations consistently exchange a and f relative to the previous
Q2 mapping. Updated the shared lookup table to use bit 7 for a and bit 2
for f. Current bit 0..7 mapping: dp,g,f,e,d,c,b,a. This supersedes earlier
mapping statements below, which refer to the pre-adjustment wiring.
CSEL3 remains segment data; CSEL4 remains digit selection; DP remains bit 0.
The active test remains the 0–9 single-digit diagnostic for physical
verification. No segment rewiring is required for this software correction.
The clock/menu test is still saved for restoration after confirmation.
### Previous seven-segment result: mapping completed, clock test restored

The user's Q2-only test reported FE all segments on, and exact one-bit
mapping: 01 dp, 02 g, 04 a, 08 e, 10 d, 20 c, 40 b, 80 f.
The driver now uses this map for all 16 glyphs, with DP at bit 0 instead
of bit 7. Shared definitions remain corrected: CSEL3 segment data,
CSEL4 digit enables. `src/test/test.c` is restored to physical clock/menu
navigation, with Timer0 scanning/clock ticks and Timer1 menu ticks.
`make test` builds the current `output/test.hex`; `make` builds main.
The static test source is saved at `tmp/q2_segment_map_test.c.saved`.
Host checks passed for all glyphs, HH.MM.SS masks, clock rollover, scanning,
and menu navigation. Both AVR images build without compiler warnings.
Await physical MODE 4 and CURRENT TIME results; do not claim all six digits
are confirmed correct merely from the Q2-only test. Earlier partial mapping
and diagnostic instructions below are chronological history.
### LCD RS and current firmware

LCD RS is now connected to dedicated PG4 and disconnected from latched A0.
PG3 controls LCD E. The shared LCD driver implements this wiring.
The current `src/test/test.c` enables hardware XMEM with SRE only (matching
the successful static-menu test), initializes LCD/clock/menu, and polls
buttons plus updates the menu on Timer1 10 ms ticks. Timer0 scans the physical
seven-segment display and supplies the only 1-second clock tick. It starts at welcome;
press and release any button to open the main linked-list menu. The
seven-segment output is now physical; relay outputs remain simulated. `output/test.hex` is the navigation
test. U4 OE is now connected to PG1/RD_L with its 10 kΩ pull-up
to +5 V retained; do not tie OE directly to +5 V. The GPIO diagnostic is
excluded from this build. Rapid-reset corruption remains unresolved and
is deferred at the user's request while button navigation is tested.
Earlier descriptions below of A0 RS, an A/B diagnostic, unchanged shared
sources, and outstanding menu/clock fixes describe older project states.

### Improved, not fully solved: intermittent LCD corruption

Observed: the static menu could display correctly on power-up with the
button latch connected, but some MCU resets produced wrong characters or
an incorrect-looking cursor. Repeated resets could restore the display.
The original report said "press a few times"; whether those presses were
RESET or input buttons was not separately confirmed before the fix.

The datasheet states that Port G pins are tri-stated during reset in
normal ATmega128A mode. Unbiased control inputs can therefore float before
firmware takes control. The recommended external reset biases were:

| Signal | Resistor | Intended idle/reset state |
|---|---|---|
| RD_L / PG1 | 10 kΩ to +5 V | HIGH: button latch outputs disabled |
| WR_L / PG0 | 10 kΩ to +5 V | HIGH: write-controlled latches closed |
| LCD E / PG3 | 10 kΩ to GND | LOW: no unintended LCD E pulse |

On 2026-10-18 the user reported that this method worked: the LCD is now
initially stable after adding the reset biases. In a later update the user
reported that rapid button presses still sometimes produce strange LCD
contents, and reconnecting button-latch OE makes the corruption more obvious.
The issue is improved, but NOT fully resolved. The user clarified that
only rapid MCU RESET presses trigger this behavior; direction/GO buttons
have no effect in the static test. U4 OE has a 10 kΩ pull-up to +5 V, not
a pull-down to GND. The user later confirmed OE was connected only through that pull-up, with RD_L disconnected. Whether
WR_L and LCD E have the other recommended bias resistors, remain unconfirmed. Do not recommend a larger resistor as a proven
fix: larger pull resistors provide weaker bias, not stronger bias.
The exact subset of resistors installed and signal waveforms were not
separately recorded. Floating controls were the working explanation;
there was no scope capture proving a particular spurious pulse.

### Solved: button navigation and button-latch bus interference

On 2026-10-18 the user confirmed that physical-button menu navigation
works after connecting U4 pin 1 (active-low OE) to PG1/RD_L and retaining
the 10 kΩ pull-up to +5 V. This is the tested working connection.

| U4 / 74HC573 connection | Current wiring |
|---|---|
| Pin 1, OE_L | Directly to PG1/RD_L; 10 kΩ pull-up to +5 V |
| Pin 11, LE | Existing NOR(RD_L, CSEL0) output |
| Q0..Q7 | Shared Port A data bus |
| D0..D5 | Debounced/inverted signals from the six fitted buttons |
| Unused D6/D7 inputs | Grounded by the user; not Q6/Q7 or shared bus lines |
| Pin 10, power GND | System GND |
| Pin 20, VCC | +5 V |

Button inputs have pull-ups and RC filters followed by 74HC14 inverters.
Released buttons are LOW and pressed buttons are HIGH at U4's inputs.
Current six-button mapping: bit 0 LEFT, bit 1 RIGHT, bit 2 UP,
bit 3 DOWN, bit 4 GO, bit 5 BTN1. Bits 6/7 are unused on this board.
The software still has BTN2/BTN3 definitions, but those buttons are not
physically fitted. Unused CMOS inputs must have defined logic levels.

What failed and what solved it:

- With OE tied to GND, the user observed LCD data corruption and no menu
  navigation. OE LOW permanently enables U4's bus outputs, even when
  LE is LOW and no button is pressed. A retained zero byte still drives
  all eight bus lines LOW; it is not a disconnected output.
- With OE pulled HIGH alone and disconnected from RD_L, U4 releases the
  bus and LCD display can work, but the CPU cannot receive button data.
- With OE connected to PG1/RD_L and the pull-up retained, the user reports
  that navigation works. Do not ground OE to enable button reading.
  The chip's power-ground pin is separate and must remain grounded.

The firmware reads CSEL0 at 0x1100. XMEM first presents the address and
then releases Port A for input and asserts RD_L LOW. That enables U4's
outputs; NOR(RD_L, CSEL0) makes LE HIGH so button states pass through.
At the end of the read RD_L returns HIGH and U4 releases the bus.
During LCD writes RD_L remains HIGH, so the MCU can drive LCD data
without the button latch also driving it. LCD E remains software-controlled
on PG3, and the downstream LCD data latch is write-qualified.

Bus contention from grounding OE is the explanation consistent with the
wiring and isolation results; no scope capture of contention was taken.
Grounding the unused D6/D7 inputs alone did not fix the OE-to-GND fault.

The earlier optional selection-qualified OE proposal was:

```
OE_L = RD_L OR CSEL0
LE   = NOR(RD_L, CSEL0)
```

No added OR gate is confirmed installed or required for the user's current
successful test. The working circuit uses RD_L directly for OE. It enables
U4 on all external reads, so another readable bus peripheral would require
review of read selection. Do not claim the OR gate was the implemented fix.

### Proteus versus physical board: observations and limits

The user reports Proteus continued working normally with the earlier
arrangement, which is why they expected it to work on the real board.
Record that as their observed simulation result. The exact Proteus model,
version, netlist, and bus-contention behavior have not been inspected;
do not assert a specific simulator defect or electrical model as proven.
Simulation success did not establish correct shared-bus output enabling
or reliable reset behavior on the physical board.

Keep two separate issues distinct:

1. Internal-access ALE: the local ATmega128A datasheet, section 12.6.4,
   printed page 38, documents address/data/ALE activity during internal
   accesses with XMEM enabled; RD/WR do not toggle for those accesses.
   This can update the first address latch and disturbed LCD RS when it
   was connected to latched A0. Dedicated PG4 RS is the current solution.
2. Button OE: permanently grounding U4 OE enables its outputs during LCD
   writes. Connecting OE to RD_L solved the reported button-navigation
   failure. Internal-access ALE alone does not assert a correctly wired
   RD_L-controlled OE, and should not be used to explain that wiring fault.

Rapid-reset LCD corruption remains a separate, deferred issue: the user
previously reported it even with U4 OE pulled HIGH and RD_L disconnected.
Successful navigation does not by itself establish that rapid-reset
reliability is now fixed. Keep the confirmed working navigation firmware
and wiring as the baseline for subsequent testing.
### Seven-segment clock implementation — 2026-10-18

The test now links the real `src/app/7SLED.c`; only relay outputs are
simulated. Select 7-SEGMENT LED -> CURRENT TIME to display HH.MM.SS.
Timer0 scans digits at 500 Hz and advances the clock once every 500 ticks.
Removed the former foreground Timer1-based clock tick to avoid double speed.
Timer1 still supplies button/menu ticks. The display starts blank until a
seven-segment menu function is selected. Clock defaults to 12:00:00 at reset.
ADJUST CLOCK supports physical selected-digit blinking, save, and cancel.
MODE 4 drives 888888 as a wiring check. CSEL3 selects digits and CSEL4
writes active-HIGH segment patterns; the driver assumes common cathode.
Multi-digit buffer writes are atomic and a blank blinking digit also blanks
its decimal point. Host tests passed for clock rollover/pause, display
formatting, digit scanning, and menu navigation. AVR test/main builds pass.
Physical seven-segment function is awaiting the user's wiring/board test;
do not record it as confirmed working hardware yet.
## Historical debugging record (2026-10-17)


## Purpose and current scope

This project uses an ATmega128A-AU and memory-mapped I/O for an LCD,
six-digit seven-segment display, buttons, and four relays. The LCD worked
in simulation but did not reliably initialize or display text on the PCB.

The user wants the existing PCB wiring retained. Firmware experiments
are confined to `src/test/test.c`. Do not change the shared driver or main
application without a new request. Earlier changes to `lcd.c` and `lcd.h`
were reverted. The main application still uses its original LCD driver.

## Wiring established during the discussion

| Signal | Connection / purpose |
|---|---|
| PA0..PA7 | Multiplexed AD0..AD7: low address byte, then data |
| PG0 | WR_L, active LOW |
| PG1 | RD_L, active LOW |
| PG2 | ALE |
| PG3 | LCD E, controlled separately in software |
| First 74HC573 D0..D7 | Port A |
| First 74HC573 LE | ALE |
| First 74HC573 Q0..Q7 | Latched A0..A7 |
| LCD RS | First latch Q0, i.e. latched A0; not raw PA0 |
| 74HC138 A/B/C | Latched A0/A1/A2 |
| 74HC138 E2 | Latched A3, active-LOW enable |
| Decoder other enables | Simulation shows E1 HIGH and E3 LOW |
| Second 74HC573 D0..D7 | Port A data bus |
| Second 74HC573 Q0..Q7 | LCD DB0..DB7 |
| Second 74HC573 LE | NOR output described below |
| LCD R/W | LOW for these write-only tests |

The LCD data-latch enable logic is:

```text
LE = NOT(WR_L OR (CSEL1 AND CSEL2))
```

CSEL signals are active LOW. Thus LE is HIGH only while WR_L is LOW
and either CSEL1 or CSEL2 is selected. It should be LOW during the later
LCD E pulse, leaving the byte stored on the second latch's outputs.

A3 being LOW enables the decoder. It is LOW at the intended LCD addresses,
but it is not guaranteed LOW for every other address the MCU may expose.
The shown decoder uses low address bits only; it does not validate the
entire `0x1100` address range.

## Address map and the command/data distinction

The definitions in `src/common/define.h` are:

| Register | Address | Select | Latched A0 / LCD RS | Meaning |
|---|---|---|---|---|
| LCD_CMD_REG | 0x1102 | CSEL2 | 0 | LCD command |
| LCD_DATA_REG | 0x1101 | CSEL1 | 1 | LCD character data |
| READ_BUTTONS | 0x1100 | CSEL0 | -- | Button input |
| LED_7CONTROL | 0x1103 | CSEL3 | -- | Digit selection |
| LED_7DATA | 0x1104 | CSEL4 | -- | Segment data |
| RELAYS | 0x1105 | CSEL5 | -- | Relay outputs |

Both LCD addresses transfer an eight-bit byte through the same data latch.
RS tells the LCD how to interpret that byte. CSEL2 is the command address;
CSEL1 is the character-data address.

For these addresses, even means A0=0 (command) and odd means A0=1 (data).
There is no need to discover odd/even after sending the byte. The chosen
address establishes RS, and that value must remain valid while E is HIGH,
through its falling edge and the required hold interval.

## Why the first latch does not retain only LCD addresses

The first latch is enabled by ALE alone. It has no LCD-select or WR_L
qualification. Whenever ALE enables it, it can capture a new address.

The decoder is combinational: it follows the first latch's outputs.
It does not remember which device was previously selected.

The ATmega128A datasheet explicitly documents address, data, and ALE
activity during internal accesses when XMEM is enabled, while external
RD and WR strobes do not toggle. Consequently:

- The address latch can update during an internal access.
- The data latch can retain the previous LCD byte because WR_L stays HIGH.
- RS can change even though no new LCD byte was intentionally written.

References:

- Local: `references/Atmel-8151-8-bit-AVR-ATmega128A_Datasheet.pdf`
- Section 12.6.4, "Using the External Memory Interface", printed page 38.
- [Microchip datasheet](https://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8151-8-bit-AVR-ATmega128A_Datasheet.pdf)

## Alternative: use latched A1 for LCD RS

This is a proposed alternative only; it has not been implemented in the
PCB wiring or source definitions. The existing board uses latched A0.

LCD RS can instead connect to the first address latch's Q1 / latched A1.
To retain the existing CSEL1/CSEL2 data-latch enable circuit, swap the
command and character-data addresses:

| Operation | Address | Select | A1 / RS |
|---|---|---|---|
| Character data | 0x1102 | CSEL2 | 1 |
| Command | 0x1101 | CSEL1 | 0 |

The corresponding definitions would be:

```c
#define LCD_DATA_REG (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL2))
#define LCD_CMD_REG  (*(volatile uint8_t *)(EXTERNAL_MEM + CSEL1))
```

With A1 as RS, odd/even parity no longer determines command versus data;
address bit 1 does. Both A0-based and A1-based RS avoid a separate GPIO.
Switching to A1 does not save another pin compared with the current A0
design, and requires physically moving the LCD RS connection.

It also does not solve the internal-access problem. PORTG address 0x65
has A1=0, so a PORTG access can change a character transfer's RS from HIGH
to LOW. Address-latch preservation during E is still required. Keeping
A0 and the current mapping avoids this wiring change.

The user also mentioned an earlier project's CSEL11/CSEL12 mapping.
Offsets 11 and 12 have the correct odd/even relationship for A0-based RS,
but both set A3 HIGH. With the current active-LOW E2 connected to A3,
those offsets disable this 74HC138; they cannot be substituted directly
into the present board's definitions. This decoding mismatch is separate
from the PORTG/internal-access RS problem observed at offsets 1 and 2.

## The specific PORTG / RS conflict

PORTG is at data-memory address `0x0065`, in extended I/O. The generated
assembly accesses it with memory instructions, rather than ordinary
low-I/O IN/OUT instructions.

```text
LCD command write: 0x1102 -> low address 0x02 -> A0=0 -> RS LOW
PORTG access:      0x0065 -> low address 0x65 -> A0=1 -> RS HIGH

0x65 = 0110 0101, written A7..A0
HIGH address bits: A0, A2, A5, A6
```

Watching A0..A3 therefore shows A0 and A2 HIGH for the PORTG address.
This is caused by the register address, not by electrical coupling from E.
A read of PORTG can produce address activity as well as a write.

The original driver's sequence writes LCD_CMD_REG and then accesses
PORTG to pulse E. If RS has become HIGH, the LCD interprets the retained
command byte as character data. In particular:

```text
0x38 with RS=0: execute function-set command
0x38 with RS=1: print ASCII character '8'
```

## Tests and observations

1. Initially the second latch's LE was left disconnected. The user
   connected it to the NOR output. This was a separate, confirmed wiring
   issue that prevented reliable byte retention.
2. Known data patterns showed that the second latch could capture bytes.
3. The original LCD driver failed on the physical board. In a stretched-E
   test, the user observed RS HIGH during what should have been a command.
4. Freezing the address latch while pulsing E produced a working cursor.
5. Apparent success of the original hello-world firmware was misleading:
   text remained from an earlier firmware because the LCD stayed powered.
6. A fully manual GPIO bus test stretched ALE, WR_L, and E. It successfully
   cleared the LCD and wrote each letter with RS still connected to A0.
7. A hardware XMEM test used fast address/data capture, then froze the
   address latch during E. It worked with both two-second and one-second
   observation intervals, using conservative bus wait states.
8. The current A/B test repeatedly writes command 0x38. Phase A freezes
   the address latch; phase B leaves XMEM enabled. The user observed A1
   alone HIGH in one state and A0/A2 HIGH in the other on the board.
   The board printed '8'. In simulation A1 remained the only HIGH bit
   and no characters were printed. The user corrected an earlier report:
   simulation did NOT raise A0 in this command-only test.

These observations strongly support the PORTG/address-latch/RS conflict.
Successful fast capture with RS protected argues against wiring length
being the primary cause under the tested conditions. It does not certify
every timing margin, temperature, load, or clock setting.

## Simulation difference

### Critical datasheet reference: internal accesses can activate ALE

Source: `references/Atmel-8151-8-bit-AVR-ATmega128A_Datasheet.pdf`,
Atmel-8151J, September 2015, section **12.6.4, "Using the External Memory
Interface"**, **printed page 38 (PDF page 38)**.

The exact relevant passage is:

> also an internal access will cause activity on address, data and ALE ports, but the RD and WR strobes will not toggle during internal access.

The preceding text specifies that this applies when XMEM is enabled.
[Open Microchip's datasheet at page 38](https://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8151-8-bit-AVR-ATmega128A_Datasheet.pdf#page=38).

This is the critical distinction for the physical circuit: ALE can update
the first address latch during an internal PORTG access even though no
external RD/WR transaction takes place. PORTG is at data address 0x0065;
capturing its low address byte raises A0/A2/A5/A6. RS connected directly
to that latched A0 can therefore change during LCD control operations.

The datasheet describes real MCU behavior; it does **not** describe or
certify Proteus behavior. The simulation limitation is an inference from
the user's comparisons, not a datasheet claim about the simulator.

In the later isolated test, LCD E remained LOW throughout. The firmware
captured 0x1102 and then wrote PORTG, comparing XMEM disabled versus
enabled. On the physical board, A1 alone was initially HIGH, then A0/A2
became HIGH in the live-XMEM phase. The nominal transition was about six
seconds after reset; the user estimated about five seconds. This isolates
the PORTG access from an LCD E edge. A direct ALE waveform was not captured
with an oscilloscope or logic analyzer, so the short pulse itself remains
inferred from the changed latch outputs and documented bus behavior.

In the observed simulation, the first latch retained the intended command
address while the real board exposed additional internal-access addresses.
The simulator's MCU model appears to omit or simplify the relevant ALE
activity. This conclusion concerns the user's observed setup; it is not a
claim that every Proteus version or AVR model behaves identically.

Static screenshots alone could not establish this difference. The later
command-only A/B comparison, address observations, and unwanted '8'
characters provided much stronger evidence. A logic-analyzer or scope
trace of ALE, RS, and E would document exact transition timing.

## Software approach for the existing PCB

The demonstrated approach keeps RS connected to latched A0:

1. Prepare GPIO defaults: ALE LOW, E LOW, WR_L HIGH, RD_L HIGH.
2. Configure Port A as input when XMEM is disabled; the second latch
   supplies LCD data, so Port A need not drive it as GPIO.
3. Save interrupt state and prevent interrupt bus accesses during transfer.
4. With XMEM enabled, write the byte to the command or data address.
5. Immediately clear SRE in MCUCR, before another memory access can
   replace the captured address. MCUCR is accessible using IN/OUT.
6. Allow setup time, raise E, then lower E with RS and data held stable.
7. Allow hold time, restore XMEM, then restore interrupt state.
8. Perform LCD execution delays after XMEM and interrupts are restored.

Keep the external write and SRE-clear operations adjacent in the generated
code: no helper call, stack access, or other data-memory access between
them. Assembly was inspected in the successful tests.

Do not disable XMEM around an unchanged high-level `lcd_init()` or
`lcd_send_string()` call: those routines still need external-memory writes.
Protection must wrap each individual transfer after its external write.

The seconds-long freezes and E pulses are diagnostic. Production firmware
should use microsecond setup/E/hold intervals, with longer clear/home and
initialization delays outside the protected interval. Existing driver
functions can eventually encapsulate this without changing menu calls,
but this has NOT yet been applied to the shared driver.

## Current test and remaining verification

`src/test/test.c` currently contains the command-only A/B diagnostic:

| Phase | XMEM during E | Timing |
|---|---|---|
| A, first | Disabled after capture | 1s E LOW, 1s E HIGH, 1s E LOW |
| B, second | Enabled throughout | Same timing |

The phases repeat forever. No hello-world text or full LCD initialization
is performed in this diagnostic. Display contents may depend on the LCD's
previous state; compare RS during E HIGH rather than expecting a screen.

Next verification, when requested:

- Return to RS-protected hello-world transfers with normal microsecond E
  pulses and execution waits after XMEM restoration.
- Test from complete MCU/LCD power-off as well as MCU-only reset.
- Test with Timer0 seven-segment interrupts active, protecting LCD
  transfers against shared-bus activity.
- Only after approval, integrate the proven transfer helper into lcd.c.

## Measurement and timing reminders

- User's LEDs are connected pin -> LED -> resistor -> GND: lit means HIGH.
- User reports many patterns Q0..Q7 / A0..A3, opposite conventional binary
  MSB-first notation. For example Q0..Q7 `00011100` means 0x38.
- LEDs cannot establish absence of brief ALE, WR_L, or E pulses.
- Pauses between writes do not slow the individual hardware XMEM cycle.
- Reflashing or resetting the MCU does not necessarily reset a powered LCD.
  Remove all power sources, including programmer/USB back-power, for a
  genuine cold-start test. Distinct test messages help identify stale text.
- `F_CPU=16000000UL` controls compiled delays, not the hardware oscillator.
- Match actual MCU clock/fuses and the exact HEX between board and simulator.
  For 16 MHz, enter `16MHz` or `16000000Hz`, not `16000000MHz`.
- The simulator screenshot showed internal 1 MHz CKSEL; physical fuses
  should be read before deciding which clock-source setting matches it.
- Datasheet section 12.6.5 warns about ordinary 74HC address-latch timing
  above 8 MHz at 4 V and references 74AHC timing. This remains a validation
  concern at 16 MHz, not an established cause of the RS failure.

## Separate main-application findings, not changes made

`src/main/main.c` initializes LCD, relays, seven-segment Timer0, and menu,
then polls buttons and updates the menu. Main is the coordinator; driver
and app modules implement the behavior.

Two additional code concerns were noted for later review:

- Menu titles use `char title[20]`, including 20-character initializers
  without room for a terminating zero. The blinking-header path passes
  a title directly to lcd_send_string(), which can read beyond the array.
- Clock/display state is shared between the main loop and timer ISR;
  visibility and atomic snapshots/updates need review.

Neither finding was established as the cause of the LCD RS problem.

## Seven-segment schematic and pending fault — 2026-10-18

The user supplied a common-cathode six-digit schematic: U9 at CSEL3 drives
2N2222 digit bases through resistors, emitters connect to ground, collectors
to digit common cathodes. U12 at CSEL4 supplies segment anodes through 470 Ω
resistors. Each common/collector also has a 1 kΩ pull-up to +5 V. U9 Q0
selects the leftmost digit in the supplied schematic and Q5 the rightmost.
The user's number convention is standard: units at right, then tens,
hundreds, and so on toward the left. The schematic matches the driver's
active-HIGH digit selection and segment data; do not blindly invert it.

The user reports MODE 4 (888888) has missing segments; other functions are
also incorrect. Their sketch shows both upper vertical segments missing
across the digits, with other differences. Digit-order reversal alone
cannot explain missing segments when all six requested digits are 8.
No measured transistor voltages, latch outputs, or exact physical segment
mapping have been provided, so the fault is not diagnosed yet.

Added an independent `make segtest` target: `output/segtest.hex` selects one
digit at a time with 0x7F for two seconds, then walks segment bits 0..7 on
Q0's digit. LCD labels each step. No timers, button reads, or relay writes.
The menu/clock image remains `output/test.hex`. This distinguishes static
wiring/data faults from multiplexing behavior; awaiting user results.

### Build workflow correction

The static seven-segment diagnostic now lives in `src/test/test.c` and
builds with the existing `make test` command to `output/test.hex`.
The custom segtest target was removed to preserve the user's make/make test
workflow. Clock/menu test source is saved at `tmp/clock_menu_test.c.saved`.
This supersedes the earlier separate-target instructions. No diagnostic
multiplexing ISR is started; the test holds individual digits/segments.

### Confirmed physical select swap and partial segment map

The first static test did not select individual digits: varying the value
written to CSEL3 changed the illuminated segment across multiple digits.
In the walking-bit phase, varying CSEL4 moved a decimal point across digits
instead of changing the segment on one fixed digit. The user confirmed
this behavior. This establishes that the physical select functions are
opposite the original software definitions/supplied schematic labels:

- Physical CSEL4 / 0x1104 controls digit enables.
- Physical CSEL3 / 0x1103 controls segment data.

`define.h` has been corrected accordingly. This does not establish where
the schematic-to-board difference originated (select wiring or labels).
Observed segment map: bit 0 dp, bit 1 g, bit 2 a, bit 3 e, bit 4 d,
bit 5 c. Bits 6/7 must be identified as b/f or another wiring fault;
do not assume their order. Some segments were reported visible on only a
subset of digits in the original all-digits-active test, so verify the map
again with only one digit enabled.

The revised `make test` static diagnostic uses 0xFE for 8 with DP off,
then walks bits on one fixed digit. It labels bits 6/7 as "b or f?".
Awaiting those two observations and digit order before updating the clock
segment lookup table and restoring the clock/menu test. The multiplexed
clock driver still has its old segment table/DP bit and is NOT yet ready
for the newly confirmed wiring. Earlier mappings in the notes are historical.

### Revised segment isolation test on Q2

With the corrected addresses, the user reported different shapes despite
identical 0xFE segment data: the first two digits had a/b missing, the third
was fully lit, and the last three had g/f missing. A single common lookup
permutation cannot explain different shapes for identical data. The first
digit's walking test also reported no a output and one unknown b/f label
lighting f; the two unknown-bit observations were not separately identified.
Do not guess bits 6/7 or declare a lookup-table fix complete.

`src/test/test.c` now holds ONLY digit-select Q2 (0x04), because the third
digit was reported fully lit. It first sends FE as a baseline, then sends
01,02,04,08,10,20,40,80. The LCD explicitly labels bit 0..7 and the mask,
without assuming segment names. Each step lasts four seconds, no ISRs.
Await all eight observed segment names, whether baseline is a complete 8
with DP off, and whether other digits stay off. Previous test source saved
at `tmp/seg_order_test.c.saved`. Build remains `make test` -> `output/test.hex`.

### Static held-digit voltage comparison test

The user confirmed the first segment data bit is DP, matching the measured
lookup table; no further polarity/table changes were justified.
The active `src/test/test.c` now holds Q0's digit at FE (8, DP off).
UP/DOWN new presses select Q0..Q5 and hold the selection indefinitely.
No multiplexing or timer interrupts are started. Button reads still use
CSEL0 with OE connected to RD_L; LCD/segment writes occur only at startup
and when selection changes. The clock/menu source is preserved at
`tmp/clock_menu_test.c.saved`. Build remains `make test` -> `output/test.hex`.
Compare a faulty digit against Q2, which showed a complete 8 in the static
mapping test. Record whether other digits remain off. With a multimeter,
compare the selected digit's common cathode, an unlit segment anode, and
its segment-latch output relative to GND. This can distinguish select-path
voltage loss from segment wiring/drive; no electrical cause is confirmed yet.

### Active diagnostic: numerical glyphs on each physical digit

At the user's request, `src/test/test.c` now cycles 0..9 on a single
selected digit, approximately two seconds per number. UP/DOWN select
physical digit Q0..Q5, GO pauses/resumes, and LEFT/RIGHT step the number
and pause. LCD shows selected Q, expected numeral, and actual data byte.
All other digits and all decimal points stay off. Uses the confirmed
SEGMENT_MAP; no multiplexing or timer interrupts. Build: `make test`, flash
`output/test.hex`. Previous held-8 test saved at `tmp/held_digit_test.c.saved`.
Clock/menu source remains at `tmp/clock_menu_test.c.saved`. This records
which glyphs fail per digit; it does not itself establish an electrical cause.

## Accidental short and LCD-only recovery baseline

The user reported accidentally shorting the circuit, after which the LCD
stopped displaying. The shorted nodes, supply condition, and LCD symptom
(blank/blocks/backlight) are not yet identified. Do not assume this can be
fixed by firmware or claim a component is damaged without evidence.

The active `src/test/test.c` is now a minimal LCD-only baseline using the
previously established PG3 E/PG4 RS driver and SRE-only XMEM setting. It
prints "LCD TEST OK", with no button reads, timer setup, digit/segment
writes, or relay writes. Build remains `make test` -> `output/test.hex`.
The previous 0–9 test is saved at
`tmp/lcd_short_recovery_previous_test.c.saved`.
Power should remain off until the short is removed and power wiring is
checked, including possible programmer/USB back-power. The new seven-segment
wiring can be disconnected with power off to isolate the LCD. Supply voltage
and any heating need checking before relying on further firmware tests.

### LCD recovered; numerical LED test restored

After the accidental VCC-to-GND short, the user reported the LCD is fine
again following the restart/recovery checks. No replacement or permanent
component damage was established. At the user's request, `src/test/test.c`
is restored from `tmp/lcd_short_recovery_previous_test.c.saved` to the
0–9 single-digit diagnostic. UP/DOWN select Q0..Q5, GO pauses/resumes,
and LEFT/RIGHT step the numeral and pause. Build remains `make test` and
`output/test.hex`. The seven-segment dim/missing-segment issue is unresolved.
