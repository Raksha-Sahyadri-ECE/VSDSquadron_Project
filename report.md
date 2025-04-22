# **Final Report: VSDSquadron FPGA RGB LED Project**

## **Verilog Code Summary**
The Verilog module top.v implements a simple RGB LED blinking mechanism using the internal high-frequency oscillator (SB_HFOSC) of the ICE40UP5K FPGA. A 24-bit counter is incremented on each clock cycle, and specific bits of this counter are connected to the red, green, and blue LED outputs respectively. This results in each LED blinking at a different frequency.

The module also includes a testwire output that is always high, primarily used for debugging or confirmation of activity.

## **Pin Mapping from PCF File**
The VSDSquadronFM.pcf file defines how signals from the Verilog module are assigned to physical pins on the FPGA:


| Signal     | Pin | Purpose                         |
|------------|-----|---------------------------------|
| `led_red`  | 39  | Drives red LED                  |
| `led_blue` | 40  | Drives blue LED                 |
| `led_green`| 41  | Drives green LED                |
| `hw_clk`   | 20  | Unused, internal clock is used  |
| `testwire` | 17  | Constant high (debug)           |


## **Integration and Workflow Observations**

Files such as top.v and the PCF file were explored and understood.

Commands like make build were used to synthesize the Verilog code.

make flash was used to upload the binary file to the FPGA board.

The RGB LED began blinking immediately after programming, confirming successful integration.


## **Challenges & Solutions**

| Challenge                | Solution                                                       |
|--------------------------|----------------------------------------------------------------|
| VirtualBox setup confusion | Followed step-by-step PDF guide and selected proper VM options |


## **Conclusion**
The project successfully demonstrated the ability to control hardware (RGB LEDs) on the VSDSquadron FM FPGA board using Verilog. It also highlighted the practical workflow of using open-source FPGA tools in a virtualized Linux environment, with hands-on experience in synthesis, placement, and flashing.
