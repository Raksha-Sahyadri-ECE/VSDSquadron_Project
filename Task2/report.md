# UART Loopback on VSDSquadron FPGA Mini


## Objective
Implement and demonstrate a **UART loopback mechanism** where transmitted data is immediately received back, facilitating UART functionality testing on the **VSDSquadron FPGA Mini**.



## Setup Requirements

  - VSDSquadron FPGA Mini board
  - USB-UART cable


- **UART Settings**:  
  - **Baudrate**: 9600
  - **Data Bits**: 8
  - **Parity**: None
  - **Stop Bits**: 1


## Block diagram
Host PC (Serial Port) → USB-UART Chip (FTDI/CP2102) ↔ VSDSquadron FPGA (UART RX → Loopback Logic → UART TX)

PC sends serial data to USB-UART adapter.

USB-UART adapter communicates with the FPGA.

FPGA receives the data and immediately transmits it back — Loopback completed.

## Circuit diagram

TX from PC goes to RX pin on FPGA.

RX from PC connects to TX pin on FPGA.

Common ground between PC and FPGA.
