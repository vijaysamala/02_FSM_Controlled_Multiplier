# RTL Design of Binary Multiplier using Datapath and ControlPath

## Overview

This project implements a Binary Multiplier using a **Controller-Datapath architecture** in Verilog HDL. The design separates the control logic from the datapath, following the methodology used in modern digital processor design.

The controller is implemented as a Finite State Machine (FSM), while the datapath performs arithmetic operations, register transfers, and multiplication. This project demonstrates fundamental RTL design concepts used in processor and ASIC design.

---

## Objectives

* Design a binary multiplier using Verilog HDL.
* Implement a Controller-Datapath architecture.
* Understand RTL design methodology.
* Verify functionality using simulation.
* Analyze waveforms using GTKWave.

---

## Features

* Controller-Datapath based design
* FSM-based control logic
* Modular Verilog implementation
* RTL simulation
* Waveform verification
* Synthesizable design

---

## Project Structure

```
rtl/
├── data_path.v
├── control_path.v

tb/
└── control_and_data_tb.v

waveforms/
└── multiplier_waveform.png

README.md
```

---

## Tools Used

* Verilog HDL
* Visual Studio Code
* Icarus Verilog
* GTKWave
* Git & GitHub

---

## Architecture

The design consists of two major modules:

### Datapath

* Registers
* Multiplexer
* Adder
* Shift Logic
* Product Register

### Control Path

* Finite State Machine (FSM)
* Control Signal Generation
* Start/Done Control

---

## Simulation

Compile:

```bash
iverilog -o multiplier.out data_path.v control_path.v control_and_data_tb.v
```

Run:

```bash
vvp multiplier.out
```

Open waveform:

```bash
gtkwave multiplier.vcd
```

---

## Learning Outcomes

This project helped me understand:

* RTL Design
* Datapath Design
* Control Unit Design
* Finite State Machines
* Register Transfer Level (RTL)
* Hardware Simulation
* Modular Verilog Design

---

## Future Improvements

* Signed Binary Multiplication
* Booth Multiplier
* Wallace Tree Multiplier
* FPGA Implementation using Vivado
* SystemVerilog Verification
* ASIC Flow using OpenLane

---

## Author

**SAMALA Vijay**

B.Tech, National Institute of Technology Delhi

Aspiring Digital VLSI / RTL Design Engineer

GitHub: https://github.com/vijaysamala
