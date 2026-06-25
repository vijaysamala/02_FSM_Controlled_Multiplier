8-bit ALU using Verilog HDL

Overview

This project implements an 8-bit Arithmetic Logic Unit (ALU) in Verilog HDL. The ALU performs arithmetic and logical operations on two 8-bit operands based on a 3-bit control signal.

This project was developed as part of my RTL Design learning roadmap in Digital Frontend VLSI.

---

Operations Supported

Select (SEL)| Operation
000| Addition
001| Subtraction
010| AND
011| OR
100| XOR

---

Block Diagram

"Block Diagram" (docs/block_diagram.png)

---

Project Structure

01_8bit_ALU/

├── rtl/

│ └── alu.v

├── tb/

│ └── alu_tb.v

├── docs/

│ ├── block_diagram.png

│ ├── truth_table.png

│ ├── design_notes.md

│ └── project_report.pdf

├── waveforms/

│ └── simulation_result.png

└── README.md

---

Verification

The design was verified using a dedicated Verilog testbench. Multiple test cases were applied to validate all supported operations.

Simulation Waveform

"Simulation Result" (waveforms/simulation_result.png)

---

Skills Demonstrated

- Verilog HDL
- RTL Design
- Combinational Logic Design
- Testbench Development
- Functional Verification
- Waveform Analysis
- GitHub Documentation

---

Learning Roadmap

8-bit ALU → Traffic Light Controller → FIFO → UART → APB Protocol → Mini RISC-V CPU
