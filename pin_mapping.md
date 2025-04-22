# Pin Mapping for VSDSquadron RGB Project

This document describes the pin mappings for the VSDSquadron FPGA mini (FM) board used in this project.

## Pin Assignments

| FPGA Pin    | Signal Name   | Description                           |
|-------------|---------------|---------------------------------------|
| `P1`        | `led_red`     | Controls the red LED color channel   |
| `P2`        | `led_green`   | Controls the green LED color channel |
| `P3`        | `led_blue`    | Controls the blue LED color channel  |
| `P4`        | `hw_clk`      | Main clock input                     |
| `P5`        | `testwire`    | Test signal (driven high)            |

**Significance of Each Pin Mapping in Context with the Verilog Code and Hardware**

RGB LED Control:

- The RGB LED pins (led_red, led_green, led_blue) are directly controlled by the Verilog counter logic, which toggles their states to create different colors.

- The SB_RGBA_DRV driver takes these signals (led_red, led_green, led_blue) and controls the LED’s brightness based on the counter's output. The mapping ensures that the correct FPGA pins are linked to the respective LED channels on the board.

Clock Input (hw_clk):

The hw_clk pin connects to the main clock input, which drives the internal oscillator (SB_HFOSC). The clock’s speed determines the toggling frequency of the RGB LED, affecting how quickly the colors change. Proper pin mapping is crucial for accurate timing and synchronization of the RGB LED display.

Test Signal (testwire):

The testwire is mapped to a specific pin for debugging purposes. It can be monitored using a logic analyzer or oscilloscope to check if the FPGA logic is functioning as expected. In the given Verilog code, it is simply driven high, acting as a signal for diagnostics.


## FPGA Board Details

- **Board Model**: VSDSquadron FM
- **FPGA Part Number**: ICE40UP5K
