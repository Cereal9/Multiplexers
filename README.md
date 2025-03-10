# Multiplexer Implementation on FPGA

## Overview
This project demonstrates how to design and implement a **2-to-1 multiplexer (MUX)** using **VHDL** on an **FPGA**. The multiplexer is used to control the inputs of a **7-segment display**, allowing it to switch between two sets of input values.

## How It Works
A **multiplexer** is a digital circuit that selects one of multiple inputs and forwards it to the output based on a **selector signal (Sel)**.

- **2-to-1 1-bit MUX**: Selects between two **1-bit inputs**.
- **2-to-1 4-bit MUX**: Created by combining four **1-bit MUXes**, allowing selection between two **4-bit inputs**.
- **Display Control**: The MUX is used to switch between two 4-bit values (`A` and `B`) and display the selected value on a **7-segment display**.

## Implementation Steps

### 1. Design a 2-to-1 1-bit MUX
- Write the **Boolean equation** for a **2-to-1 1-bit MUX**.
- Implement the equation in **VHDL** (`MUX2to1_1bit.vhd`).
- Simulate the design to verify functionality.

![MUX 2to1 1 bit](https://github.com/Cereal9/Multiplexers/blob/main/MUX2to1_1bitRTLviewer.png)


### 2. Design a 2-to-1 4-bit MUX
- Create a new VHDL file (`MUX2to1_4bit.vhd`).
- Instantiate **four 1-bit MUXes** and connect them properly.
- Simulate to confirm correct operation.

### 3. Control the 7-Segment Display
- Create another VHDL file (`DisplayControl.vhd`).
- Instantiate both the **MUX2to1_4bit** and the **7-segment display control** circuit.
- Assign the following inputs:
  - **A**: 4 switches (`SW[3:0]`)
  - **B**: Another 4 switches (`SW[7:4]`)
  - **Sel**: A push button to toggle between `A` and `B`.
  - **Output**: The selected value is displayed on the **7-segment display**.
- Program the FPGA and verify the circuit by toggling `Sel` to switch between `A` and `B`.

## Testing & Simulation
- The **MUX2to1_1bit** and **MUX2to1_4bit** components are **simulated** to verify correct selection behavior.
- No simulation is needed for the **DisplayControl** circuit since individual components were already tested.
- The **FPGA is programmed**, and physical testing is done by changing switch values and pressing the **Sel** button to see the **7-segment display** update accordingly.

![MUX 2to1 1 bit](https://github.com/Cereal9/Multiplexers/blob/main/MUX2to1_1bit%20sim.png)
![MUX 2to1 4 bit](https://github.com/Cereal9/Multiplexers/blob/main/mux2to1%204bit%20sim.png)

## Future Enhancements
- Expand the design to a **16-bit multiplexer** by cascading four **4-bit multiplexers**.
- Implement **priority encoding** for more complex selection mechanisms.

## Tools Required
- **Quartus Prime** (FPGA development software)
- **DE10-Lite FPGA Board**
- **Basic VHDL knowledge**

## Conclusion
This project successfully demonstrates the use of a **multiplexer** in an FPGA. It reinforces key concepts in **digital design, hierarchical instantiation, and hardware implementation** while providing practical experience in **VHDL coding and FPGA programming**.
