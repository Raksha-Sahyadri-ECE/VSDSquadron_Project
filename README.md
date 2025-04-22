**VSDSquadron RGB Project**

**Project Overview**
This project controls RGB LEDs on an FPGA board using Verilog. It utilizes an internal high-frequency oscillator (SB_HFOSC) and simple counter logic to toggle the LEDs and display different colors.

**Module:** top.v
Purpose
The top.v module controls the RGB LEDs on the FPGA by toggling the LED colors based on an internal clock. The module also provides a test wire for debugging purposes.

**I/O Ports**
1. led_red (output): Red LED control.
2. led_blue (output): Blue LED control.
3. led_green (output): Green LED control.
4. hw_clk (input): Main clock input (unused here as internal oscillator is used).
5. testwire (output): Test signal driven high for debugging.

**Key Components**
1. SB_HFOSC: Internal high-frequency oscillator (~12 MHz).
2. Counter: Toggled on every cycle of the oscillator, changing LED states.
3. SB_RGBA_DRV: RGB driver that controls the LED color channels.

**How It Works?**
1. Oscillator: Uses the internal 12 MHz oscillator (SB_HFOSC) to drive the counter.
2. Counter: Toggles LEDs after a certain number of clock cycles.
3. RGB LED Driver: Controls the color mixing for the LEDs using SB_RGBA_DRV.
