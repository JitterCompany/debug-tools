# SL23 modem tester

A test jig for the modules that plug into a Sensor Link host board. It carries a
mini-PCIe slot for an LTE module, an SL23 extension FFC, and a UI-board connector,
and it ships with factory-test firmware that gives a pass/fail verdict on LEDs plus
a machine-readable log over RTT.

The board is a stripped-down Sensor Link host: same MCU (STM32L4R7), same pinout for
everything a module touches, with the external SRAM and several unrelated parts left
off. That compatibility is deliberate — the test firmware can be proven on a real host
board before any jig exists, and the jig can run ordinary host firmware as a dev board.

## What it tests

| interface | connector | status |
|---|---|---|
| mini-PCIe cellular module | J7 | implemented: rail, AT, SIM, current |
| SL23 extension (23 IO + rails, 30-pin FFC) | J10 | connector present, tests not written |
| UI board | J12 | connector present, tests not written |

**It is not a mini-PCIe tester.** Only the switched 3V3 rail, USART3, `CELLULAR_RESET_n`
/`DTR` and the module's `LED_WWAN` are wired to the slot. The slot's USB pins go only to
the debug header, the PCIe lane is unconnected, and the MCU has no USB host on that side.
It tests *modems that happen to be in mini-PCIe form factor*, over UART.

## Indicators

One red/green pair per zone: the jig itself near the power input, and the module under
test beside its connector. Green blinking means the run is in progress; steady green is
a pass; a blinking red counts out a fault code; a steady red anywhere means the jig
failed its own self-test and no verdict on it can be trusted. Fault codes start at 2 —
a single flash is indistinguishable from a slow blink.

## Firmware

The factory test lives with the firmware, not here. It reads the board revision straps
so one image runs on both this jig and a Sensor Link host board.

## CI

Checked by the shared `pcb_release` gates (`erc`, `drc`, `3d`, `drift`, `pinmap`) —
see `../CI-STATUS.md`. Regenerate the pin map with `tools/pcb.sh pinmap SL23-modem-tester`
after any MCU pin change and commit `pinmap.toml`; the gate diffs against it, so firmware
sees pin changes in review.
