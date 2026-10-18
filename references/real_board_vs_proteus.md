# Proteus simulation versus the physical ATmega128A board

Date: 2026-10-18

This document records differences observed during this project's testing.
It does not claim that all Proteus versions or component models behave
this way. The exact simulator version, model implementation, and complete
simulated-versus-physical wiring have not been audited.

## Observations

| Test / condition | Proteus observation reported by the user | Physical-board observation | Current resolution / status |
|---|---|---|---|
| LCD RS connected to address-latch A0 | Earlier LCD tests worked; an isolated command/PORTG test did not show the same address changes as the board | Internal accesses changed the latched address; RS could change before the LCD E pulse, causing incorrect interpretation | LCD RS moved to dedicated PG4; E remains PG3 |
| Button latch OE permanently LOW / grounded | User reports the earlier arrangement appeared to work normally | LCD corruption and no usable button navigation | Connect U4 OE to PG1/RD_L with a 10 kΩ pull-up to +5 V; user confirmed navigation works |
| Button latch OE held HIGH, disconnected from RD_L | No separate matched simulation result recorded | LCD hello-world and static-menu display worked; button data could not reach the CPU | Useful isolation test only; reconnect OE to RD_L for navigation |
| Rapid MCU resets while LCD stays powered | No matched rapid-reset comparison recorded | Sometimes incorrect characters or cursor appearance; reset-bias resistors improved behavior, but rapid-reset corruption was still reported | Partially improved; further reset testing deferred |
| Unused button-latch D6/D7 inputs floating | No matched comparison recorded | Two inputs were left floating because only six buttons are fitted; grounding them did not fix corruption while OE was grounded | Unused D6/D7 inputs now grounded; not the shared bus or Q outputs |

Simulation success alone did not establish reliable physical bus operation.
Where the simulation column says no matched result, do not infer that
Proteus passed that specific test.

## What the MCU datasheet establishes

The local [ATmega128A datasheet](Atmel-8151-8-bit-AVR-ATmega128A_Datasheet.pdf)
provides the hardware behavior relevant to these tests:

- Section 12.6.4, printed page 38: with XMEM enabled, internal accesses
  cause activity on address, data, and ALE. RD and WR do not toggle during
  internal accesses. ALE can therefore update the first address latch even
  when firmware is not intentionally addressing an external device.
- Section 12.6.5, printed page 38: address-latch timing needs care at higher
  CPU frequencies. It specifically cautions about older 74HC latch timing
  and discusses 74AHC compatibility. At this project's assumed 16 MHz,
  timing must be checked; it was not established as the cause of the faults.
- Section 6.1.9, Port G: in normal ATmega128A mode, Port G pins are
  tri-stated during reset. External bias resistors can establish idle
  control levels before firmware takes control. ATmega103 compatibility
  mode has different behavior and must not be conflated with normal mode.

These statements describe the MCU. They do not specify how Proteus models
it. The earlier observed address-latch discrepancy suggests that the
simulation did not reproduce all relevant behavior in that setup, but the
precise reason remains unverified.

## Why the two main fixes are different

### LCD RS fix

The first 74HC573 latches addresses whenever ALE is active. If LCD RS is
connected to its A0 output, internal-memory address activity can alter RS
between loading the LCD data latch and pulsing LCD E.

The current wiring uses PG4 for RS, independently of the address latch.
PG3 supplies E. The second latch holds LCD DB0..DB7 and is enabled only
by the LCD-select/write gating. Internal-access ALE does not by itself
assert WR or overwrite that write-qualified data latch.

### Button output-enable fix

U4 is a 74HC573 with separate latch enable and active-low output enable:

- LE LOW holds the stored byte; it does not release the data bus.
- OE LOW actively drives the stored byte onto Q0..Q7.
- OE HIGH puts Q0..Q7 in high impedance.

Even a stored zero byte actively drives all bus lines LOW when OE is LOW.
If the MCU simultaneously writes LCD data, the two devices can drive
opposing levels. An unchanged button state does not prevent this conflict.
The stored latch value is also not specified at power-up before capture.

With OE connected to RD_L, the MCU enables the button outputs for a read
and disables them for LCD writes. The working test reads buttons at
`0x1100` (CSEL0). The existing NOR(RD_L, CSEL0) signal makes LE HIGH during
a selected button read. RD_L returns HIGH at the end of the read, releasing
the bus. Internal accesses do not assert RD, so the documented ALE effect
is not a reason to ground OE.

The user-confirmed working connection is:

```
PG1 / RD_L -------- U4 pin 1 / OE_L
                         |
                        10 kΩ
                         |
                        +5 V

U4 pin 11 / LE = NOR(RD_L, CSEL0)
```

A separate OR-gate proposal, OE_L = RD_L OR CSEL0, would qualify output
enabling by device selection. It was not confirmed installed and was not
the implemented fix. Direct RD_L-to-OE enables U4 on every external read;
adding another readable peripheral would require checking bus selection.

## Reset observations

The suggested external biases were RD_L and WR_L pulled up to +5 V through
10 kΩ, and LCD E pulled down to GND through 10 kΩ. The user initially
reported stable reset behavior after the method, then reported residual
corruption when pressing RESET quickly. The OE 10 kΩ pull-up was explicitly
confirmed; installation of the other individual resistors was not separately
confirmed. Do not record the reset problem as fully solved.

Rapid-reset corruption was reported even with U4 OE connected only through
the pull-up and disconnected from RD_L. It therefore must not automatically
be attributed to enabled button outputs. No reset waveform was captured.

## How to compare future tests

Use the same HEX, intended wiring, supply voltage, and actual CPU frequency
for both tests. F_CPU controls compiled delays; it does not configure the
physical oscillator or fuses. Distinguish a complete MCU/LCD power cycle
from an MCU-only reset with the LCD still powered.

Record signal measurements rather than relying only on display appearance:

- ALE and the first latch outputs during external and internal accesses.
- RD_L and U4 OE during button reads, LCD writes, and reset.
- WR_L and the LCD data-latch LE signal.
- LCD RS, E, and DB0..DB7 during initialization and transfers.
- Supply and ground levels when behavior is intermittent.

A multimeter or indicator LED can miss short pulses and cannot establish
bus timing or rule out contention. A scope or logic analyzer would help
separate incorrect enables, timing margins, and reset transients.

## Confirmed baseline

Physical-button menu navigation now works with RS on PG4, E on PG3, and
button OE connected to PG1/RD_L with its pull-up retained. Six button inputs
are active HIGH after RC filtering and 74HC14 inversion. Unused U4 D6/D7
inputs are grounded. The current test uses hardware XMEM and Timer1 menu
polling. Relay/seven-segment outputs were simulated during that confirmed
navigation baseline. A later test enables physical seven-segment output;
its hardware result is pending. Relay outputs remain simulated.

See [the debugging notes](../gpt_note.md) for the session history and
[README](../README.md) for build/test instructions.

## Later seven-segment physical mapping test

Static board tests exposed another schematic/definition mismatch: CSEL3
actually controls segment data and CSEL4 controls digit selection. Walking
bits on Q2's digit established dp,g,a,e,d,c,b,f for segment bits 0..7.
The physical driver and lookup table now match these observations.
Why the board differs from the supplied drawing was not established;
do not attribute reversed select wiring or segment ordering to simulator
model behavior. The restored multiplexed clock awaits physical retesting.
