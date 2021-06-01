# AE-01_RISC-V_Core
### A 32-bit RISC-V microprocessor core implementation with Verilog HDL on Vivado Design Suite

The repo contains all the design and simulation sources. Create a new project or directly import the project along with the design files to Vivado.

You can implement this RISC-V core in a hardware of your choosing along with the required constraint files.

The Datasheet explains the design sources, architecture, control words and the instruction set.

## Assembly and Simulation

To generate machine code you can use https://www.kvakil.me/venus/ this web app.
Simply write your code in assembly and then copy the machine code in the simulation tab of the web site into the VLSI_RISC-V_Core/sources1/instmem.mem file.

Similarly to preload the data memory with values you can alter the VLSI_RISC-V_Core/sources1/datamem.mem file.

You can then run a behavioural simulation within Vivado Design Suite.
