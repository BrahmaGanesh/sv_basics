# SystemVerilog Coding Style Guide ✍️

This document defines clean and consistent coding conventions for writing SystemVerilog code in this repository.

---

## 📁 1. File Naming

- Use lowercase + underscores: `counter.sv`, `mux2to1.sv`

---

## 🧱 2. Module Structure

- Use consistent formatting for module header and ports
- Use `parameter` for configurable widths

```systemverilog
module module_name #(
  parameter WIDTH = 8
)(
  input  logic clk,
  input  logic rst_n,
  ...
);
