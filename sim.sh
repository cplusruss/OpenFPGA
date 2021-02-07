#!/bin/bash
iverilog *.v && vvp a.out && gtkwave -S conf.tcl out.vcd
