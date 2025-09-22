# 🖥️ RISC-V Single Cycle Processor

## 📌 Overview

This project implements a **32-bit single cycle RISC-V processor** in **Verilog/SystemVerilog**.
The design is based on the **RV32I base instruction set** and executes **one instruction per clock cycle**.
It is a teaching/learning model of a processor datapath, designed for clarity and modularity.

---

## 🎯 Features

* Implements **RV32I base ISA** (Integer instructions).
* Supports all instruction formats: **R, I, S, B, U, J**.
* Modular design with separate ALU, Register File, Instruction Memory, Data Memory, Control Unit, and Immediate Generator.
* Performs:

  * Arithmetic operations (ADD, SUB, SLT, SLTU)
  * Logical operations (AND, OR, XOR)
  * Shift operations (SLL, SRL, SRA)
  * Memory access (LW, SW)
  * Branch and jump (BEQ, BNE, JAL, JALR, etc.)
* Fully synthesizable and simulation-ready.

---

## 🏗️ Architecture

### 🔹 Datapath Components

1. **Program Counter (PC)** – Holds the address of the current instruction.
2. **Instruction Memory** – Stores instructions to be executed.
3. **Register File** – 32 registers (x0–x31), with two read ports and one write port.
4. **ALU (Arithmetic Logic Unit)** – Performs arithmetic and logic operations.
5. **Data Memory** – Stores data for load/store instructions.
6. **Control Unit** – Generates control signals based on instruction opcode.
7. **Immediate Generator** – Extracts and sign-extends immediate fields from instructions.
8. **Multiplexers (MUXes)** – Used for selecting ALU inputs, PC source, and write-back data.

### 🔹 Control Signals

* `ALUSrc` – Selects between register and immediate for ALU input.
* `MemRead` / `MemWrite` – Enable signals for memory operations.
* `RegWrite` – Enables register write-back.
* `MemtoReg` – Selects data from memory or ALU result for write-back.
* `Branch` – Determines conditional branching.
* `ALUOp` – Encodes the operation for the ALU.

---

## 🧩 Instruction Set Coverage

| Format | Example Instructions                             |
| ------ | ------------------------------------------------ |
| R-type | ADD, SUB, AND, OR, XOR, SLL, SRL, SRA, SLT, SLTU |
| I-type | ADDI, ANDI, ORI, LW, JALR                        |
| S-type | SW                                               |
| B-type | BEQ, BNE, BLT, BGE, BLTU, BGEU                   |
| U-type | LUI, AUIPC                                       |
| J-type | JAL                                              |

---

## 🛠️ Tools Used

* **Simulation:** ModelSim / Icarus Verilog / Vivado Simulator
* **Synthesis (optional):** Xilinx Vivado / Intel Quartus
* **Target Hardware (optional):** FPGA boards (e.g., Basys3, Nexys A7, PYNQ-Z2)

---


## 🚀 Future Work

* Add **pipeline stages** (IF, ID, EX, MEM, WB).
* Support **CSR (Control and Status Registers)** instructions.
* Implement **hazard detection and forwarding**.

---

## 📜 References

* *Digital Design and Computer Architecture: RISC-V Edition* – Sarah L. Harris & David Harris
* RISC-V ISA Specification ([riscv.org](https://riscv.org/))

---

👉 Would you like me to also draft a **block diagram figure** (datapath schematic) for this README, so it looks complete like the GitHub ones?

