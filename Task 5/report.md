# FPGA-Based UART-Controlled Actuator System

## Overview

This project demonstrates a simple yet effective system where an FPGA receives control commands via UART and operates actuators accordingly. Specifically, this design controls a set of LEDs to visually indicate received commands, cycling through the following states with each valid UART input:

All LEDs OFF → 1 LED ON → 2 LEDs ON → 3 LEDs ON → All LEDs OFF → Repeat

This project exemplifies how to decode serial UART commands and translate them into physical outputs on FPGA pins, forming the basis for controlling actuators like motors, LEDs, or relays.

## Key Learning Objectives

- Parse and interpret UART command protocols: Implement a UART receiver module to read incoming serial data and detect valid commands.
- Control actuators via FPGA outputs: Use FPGA GPIO pins to drive LEDs, demonstrating actuation based on received commands.
- Implement state machine logic: Cycle through actuator states in response to valid inputs.
- Ensure reliable hardware operation: Handle signal synchronization and debounce inputs to prevent erratic behavior.

## Potential Applications

- Home Automation: Control lighting, fans, or appliances remotely via UART commands through serial interfaces or microcontrollers.
- Robotics: Receive movement or status commands over UART to drive motors, servos, or signaling LEDs.
- Industrial Controls: Actuate relays or indicators in response to serial control signals in embedded systems.

## System Architecture

![System Architecture](Task%205/system_architecture.png)
Key components:

- UART Receiver Module: Receives and decodes serial data.
- Control Logic: Manages LED states based on received commands.
- Output Pins: Drive LEDs to reflect current actuator state.


## Project Structure

- `top.v` — Top-level module integrating UART RX and LED control logic.
- `uart_rx.v` — UART receiver module (8 data bits, no parity, 1 stop bit).
- `vsdsquadron.pcf` — Pin constraints file mapping FPGA pins to LEDs and UART signals.
- `Makefile` — Build, flash, and terminal interface automation using yosys, nextpnr, and iceprog.


## How to Use

1. Build the project:
   make build

2. Flash the bitstream to your FPGA:
   sudo make flash
   
3. Open a serial terminal at 9600 baud:
   Example: PuTTY
   
4. Type 1, 2, 3, 4 via UART — LEDs will cycle through:

  3 LEDs ON → 2 LED ON → 1 LED ON → OFF → ...
 
