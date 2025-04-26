# UART Loopback on VSDSquadron FPGA Mini

---

## 🏁 Objective
Implement and demonstrate a **UART loopback mechanism** where transmitted data is immediately received back, facilitating UART functionality testing on the **VSDSquadron FPGA Mini**.


---

## 🛠️ Setup Requirements

  - VSDSquadron FPGA Mini board
  - USB-UART cable


- **UART Settings**:  
  - **Baudrate**: 115200
  - **Data Bits**: 8
  - **Parity**: None
  - **Stop Bits**: 1

---

## Block diagram
+----------------+             
|                |             
|    Host PC     |             
| (Serial Port)  |             
+-------+--------+             
        | TX                        
        V                            
+----------------+         +------------------+
|                |         |                  |
|  USB-UART Chip |  <---->  |  VSDSquadron FPGA |
|  (FTDI/CP2102) |          |  (UART Loopback)  |
+----------------+         +------------------+
                                      |
                                      V
                          +------------------------+
                          |  UART RX  -> UART TX     |
                          | (Receive → Loopback → Transmit) |
                          +------------------------+
PC sends serial data to USB-UART adapter.

USB-UART adapter communicates with the FPGA.

FPGA receives the data and immediately transmits it back — Loopback completed.

## Circuit diagram

+-------------------+             +--------------------+
|    PC (Serial TX) | --------->   | FPGA (UART RX Pin)  |
|    PC (Serial RX) | <---------   | FPGA (UART TX Pin)  |
|       GND         | ------------ | FPGA GND           |
+-------------------+             +--------------------+

TX from PC goes to RX pin on FPGA.

RX from PC connects to TX pin on FPGA.

Common ground between PC and FPGA.
