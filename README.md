# 🚀 UNA-Chip ASIC (8-Bit Custom Processor)

Welcome to the official repository for **UNA-Chip**, a custom-designed, hardware-verified **8-bit microprocessor**. The logical design gates have been fully synthesized, floorplanned, and routed on the silicon wafer grid targeting production-ready silicon on the **SkyWater 130nm open-source PDK** via the Tiny Tapeout framework.

---

## 🎨 Interactive Silicon Layout Viewer

You can view the physical transistor layout maps, multi-layer silicon wiring tracks, and standard-cell configurations for this processor directly hosted in your web browser:

👉 **[Launch Interactive Silicon Layout Viewer](https://Zeenz123.github.io/UNA_Chip_ASIC/)**

---

## 🧠 Architectural Overview

UNA-Chip is an instruction-loaded, registers-driven 8-bit architecture mapped from custom graphical layouts into an optimized Verilog hardware descriptive structure:

* **Data Bus Width:** 8-bit execution path.
* **Address Space:** 16-bit wide address bus.
* **Control Unit (CU):** Integrated execution engine orchestrating opcode jumps and multi-cycle bus routing.
* **Arithmetic Logic Unit (ALU):** Full mathematical block containing standard operations, counters, and 8-bit comparisons.
* **Timing Infrastructure:** Synchronous edge-triggered pipeline built entirely using high-reliability `REGISTER_FLIP_FLOP` arrays with custom clock gating networks.

---

## 📁 Repository Structure & Implementation

The layout and automation parameters of this repository are split across separate, clean design tracks:

* 📄 **`info.yaml`** — Sizing parameters reserving a custom footprint scale on the multi-project wafer.
* 📄 **`src/Complete_CPU.v`** — The principal processing architecture containing your primary arithmetic modules and synchronous clock logic.
* 📄 **`src/una_processor_bridge.v`** — The top-level `tt_um_CPU` wafer interface wrapper and standard component primitive gate library.
* 📄 **`test/`** — Automated software verification bench leveraging Cocotb regression triggers and Iverilog HDL simulation scripts.

---

## 🚀 Manufacturing Pipeline Status

* **Linter Stage:** `Verilator` Status: **PASS (100% Green)**
* **Synthesis & Floorplanning:** `Yosys` Status: **PASS**
* **Gate-Level Simulation:** `gl_test` Status: **PASS**
* **ASIC Hardening:** Final GDSII Blueprint Output Status: **SUCCESS**

---
*Developed by Zeenz — Mapped natively from Logisim-evolution to physical hardware silicon geometry.*
