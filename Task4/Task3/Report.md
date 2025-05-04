
---

## 🔍 Study of Existing Code

The `uart_trx.v` and `top.v` files contain the core logic for serial data transmission via UART.

- `uart_trx.v`: Implements the UART protocol (start bit, 8 data bits, stop bit).
- `top.v`: Integrates UART transmitter with a clock divider and handles data transmission.

Key parameters:
- **Baud Rate**: 9600
- **Start Bit**: 1
- **Data Bits**: 8
- **Stop Bit**: 1

---

## 📐 Design Documentation

### 🖼️ Block Diagram

The following illustrates how the UART transmitter module interacts with external devices.

Data generator - UART transmitter - FPGA TX pin - USB to Serial Converter - Serial Monitor (PuTTY)

---

## 🔧 Implementation

### 🛠️ Hardware Setup
- Connect the FPGA board to the laptop.

### 🧠 Programming Steps
1. Create the files: Makefile, VSDSquadronFM.pcf, top.v, and uart_trx.v
2. #### Enter into the folder containing these files and execute the following:
   - make build
   - sudo make flash

---

## 🧪 Testing and Verification

### Requirements
- PuTTY or Minicom (serial terminal)
- Correct COM port (e.g., COM3 on Windows)
- Baud rate: `9600`

### Procedure
1. Open PuTTY and configure it to the correct serial port and baud rate.
2. Power the FPGA and start transmission.
3. Observe the serial terminal for repeated or event-triggered data (e.g., a stream of characters like `"D"` or sensor values if integrated).
4. Optionally verify LED activity or scope signal on TX line.


