# UART Sensor Data Transmission using VSDSquadron FM FPGA

## 📌 Objective

Implement a UART transmitter that sends real-time data from a sensor through the FPGA to an external device (e.g., PC), enabling communication via a serial terminal.

---

## Project Structure/Block Diagram

![Block Diagram](Task4/Block diagram.png)
---

## 🧩 Circuit Connections

- Sensor data → FPGA GPIO input pin
- FPGA TX (UART) → USB-to-Serial Converter (FTDI)
- USB → PC (e.g., COM7 or COM3 on Windows)
- Common GND between FPGA and sensor

---

##  Code Overview

### `uart_trx.v`
- Implements UART protocol.
- Sends serial data (start bit, 8 data bits, stop bit) at defined baud rate.

### `top.v`
- Reads sensor input.
- Triggers UART transmission based on sensor state.
- Optionally blinks RGB LED for visual feedback.

---

## Implementation Steps

1. Clone or download this repository.
2. Connect your sensor to the appropriate FPGA GPIO.
3. Flash the bitstream to the VSDSquadron FM board.
4. Connect the board to your PC via USB.

---

## 🔬 Testing and Verification

### Tools Used:
- **PuTTY** (Windows Serial Terminal)
- **COM3** (or applicable COM port)
- **Baud Rate:** `9600`

### Test Steps:
1. Open PuTTY → Set connection type to **Serial**.
2. Set **Serial line** to `COM3`, **Speed** to `9600`.
3. Click **Open**.
4. Verify RGB LED behavior.

---

##  Results

- UART transmission verified via serial terminal.
- Sensor inputs correctly mapped to serial data.
- RGB LED provided visual status indication.
- Reliable transmission with no observed data corruption.

---

##  Deliverables

-  Verilog Source Files
-  Constraint File (`.pcf`)
-  Makefile
-  Block Diagram & Circuit Diagram *(To be added as images)*
-  Demo Video *(To be linked/uploaded)*
-  This Documentation


