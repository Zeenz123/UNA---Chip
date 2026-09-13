# Makefile
# See https://cocotb.org for more information

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

# Only include source files if we are NOT running a gate-level netlist test
ifneq ($(GDS_TEST), 1)
ifneq ($(GL_TEST), 1)
VERILOG_SOURCES += $(PWD)/../src/una_processor_bridge.v
VERILOG_SOURCES += $(PWD)/../src/Complete_CPU.v
endif
endif

# This is the test bench wrapper file
VERILOG_SOURCES += $(PWD)/tb.v

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = tb

# MODULE is the name of the Python test file
MODULE = test

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
