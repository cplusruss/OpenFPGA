# iverilog / GTKWave Template for MacOS

This is a general template for simulating Verilog HDL code on MacOS.  The template contains a single testbench and two modules.

- ```dut.v``` is a simple module with two counters and a shift register
- ```dut2.v``` is an inverter
- ```tb.v``` is the test bench

### conf.tcl

Configure GTKWave to add all waves from the Testbench automatically to the view, sets the time to view full extents, and optionally exports a PDF of the simulation.

### sim.sh

Compile all verilog in the current working directory with ```iverilog``` and output to gtkwave.

