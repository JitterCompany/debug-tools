# Debug Tools for Embedded Development

KiCad projects for the small debug, programming and test boards used across Jitter
projects. Each board has its own folder; manufacturing files are in `production/`.

## Debug adapters

Most Jitter boards expose a single 6-pin
[Würth REDFIT IDC SKEDD](https://www.we-online.com/en/components/products/WST_IDC_PRE_PRESSED_CONNECTOR)
footprint that carries both **SWD and a UART**. SKEDD connectors press straight into
plated holes, so the target board needs no mating connector. The adapters below
convert a debug probe's native header to that 6-pin cable.

| Board | Probe side | Notes |
|---|---|---|
| [BMP-REDFit-adapter](BMP-REDFit-adapter) | Black Magic Probe: standard 10-pin 1.27 mm Arm Cortex Debug header + 4-pin PicoBlade UART | the 10-pin is the common Arm/MIPI-10 JTAG/SWD pinout, so most Cortex probes fit (UART via the separate PicoBlade) |
| [HSprobe-REDFit-adapter](HSprobe-REDFit-adapter) | [hs-probe](https://github.com/probe-rs/hs-probe): 14-pin 1.27 mm STDC14 | STDC14 is ST's STLINK-V3 connector (Arm 10-pin on pins 3–12, UART on 13/14), so STLINK-V3 should fit too |
| [JLink-REDFit-adapter](JLink-REDFit-adapter) | J-Link: standard 20-pin 2.54 mm Arm JTAG header + 4-pin PicoBlade UART | other 20-pin tools give SWD; UART on pins 5/17 is J-Link VCOM specific (else use the PicoBlade) |

### Other adapters

| Board | Purpose |
|---|---|
| [JLink-to-TC2030-IDC__microchip](JLink-to-TC2030-IDC__microchip) | J-Link 20-pin to a Tag-Connect TC2030-IDC with Microchip's pinout |
| [jtag-swd](jtag-swd) | 10-pin Cortex SWD header broken out to 2.54 mm pin headers |

## Misc tools

| Board | Purpose |
|---|---|
| [USBSwitch](USBSwitch) | USB-A / micro-USB passthrough with jumpers to disconnect the data lines and select VBUS from the host or an external 5 V banana-jack supply |

## Factory testers

| Board | Purpose |
|---|---|
| [SL23-modem-tester](SL23-modem-tester) | Test jig for Sensor Link plug-in modules (mini-PCIe LTE modem, SL23 sensor extension) |

## Repository

`libraries/KicadComponents` and `tools/pcb_release` are git submodules
(`git submodule update --init`). Boards are checked and released by the shared KiCad CI
in `.github/workflows`.
