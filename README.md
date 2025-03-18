# MIPS-Project

Design and verification of an 8-bit MIPS processor, integrating key modules such as the Instruction Register, Control FSM, Register File, ALU, ALU Control, and Program Counter. The design is implemented using Verilog for RTL design and verified with methodologies inspired by UVM environments. Schematics and layouts were crafted using Virtuoso.
Block Diagram:
<img width="468" alt="image" src="https://github.com/user-attachments/assets/a727565b-7ebe-4f01-b9ce-f244c28969e9" />

## Features

- **8-bit MIPS Processor Design:**  
  Implements core MIPS components in a modular fashion.
- **Modular Design:**  
  Separate modules for the Instruction Register, Control FSM, Register File, ALU, ALU Control, Program Counter, and more.
- **Verification:**  
  Comprehensive verification using testbenches (e.g., `mips_tb.v`) and approaches mirroring UVM methodologies.
- **Schematics & Layouts:**  
  Visual design elements created with Virtuoso.
- **RTL Implementation:**  
  Detailed implementation with supporting simulation, synthesis, and constraint files.

## Repository Structure


*Note:* Additional files such as `command.log`, `ram.dat`, and `ram.dat.orig` are provided to support logging and memory initialization.

## Tools and Requirements

- **Verilog Simulation:**  
  Use simulators like ModelSim, Icarus Verilog, or similar tools.
- **Synthesis:**  
  Apply the provided synthesis constraints (`mips_syn.sdc`) and timing files (`mips_syn.sdf`) with your synthesis tool.
- **Verification:**  
  Run the testbench (`mips_tb.v`) to verify design functionality.
- **Schematics & Layouts:**  
  Virtuoso is used for schematics and layout views.

## Getting Started

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/yeshwanthkattta/MIPS-Project.git
   cd MIPS-Project
