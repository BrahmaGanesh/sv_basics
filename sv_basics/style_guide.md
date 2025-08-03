# SystemVerilog Coding Style Guide ✍️

This guide defines consistent coding conventions for writing SystemVerilog code in this repository.  
Following these practices ensures your RTL design is **readable**, **reusable**, and **review-friendly**.

---

## 📁 1. File Naming

- Use lowercase + underscores:  
  ✅ `counter.sv`, `mux2to1.sv`, `priority_encoder.sv`  
- Avoid camelCase or spaces in filenames

---

## 🧱 2. Module Declaration Style

- Use consistent formatting with proper alignment
- Keep parameterized modules clean and readable

```systemverilog
module module_name #(
  parameter WIDTH = 8
)(
  input  logic clk,
  input  logic rst_n,
  ...
);

## 3. 🧠 Naming Conventions

Use consistent naming styles across all modules and files.

| Element         | Convention     | Example           |
|----------------|----------------|-------------------|
| Module names    | lowercase_words | `shift_register`  |
| Parameters      | UPPERCASE       | `WIDTH`           |
| Ports & signals | snake_case      | `data_out`, `clk` |
| Constants       | UPPERCASE       | `DEFAULT_VALUE`   |


4. 🔁 Clock & Reset Conventions

- Use clk and rst_n as standard names
- Use asynchronous active-low reset unless otherwise needed
- Use always_ff for sequential logic

always_ff @(posedge clk or negedge rst_n) begin
  if (!rst_n)
    q <= '0;
  else
    q <= d;
end

5. 🔃 Combinational Logic

- Use always_comb instead of always @(*)
- Keep logic simple and readable using if-else, case, or ternary

always_comb begin
  if (enable)
    out = in;
  else
    out = '0;
end

6. 💬 Comments

- Add a brief description at the top of every module
- Use inline comments for key logic only
- Comment blocks should be meaningful, not excessive

// counter.sv
// Parameterized up-counter with enable and async reset

7. 📐 Spacing & Indentation

- Use 2 or 4 spaces for indentation (be consistent)
- Align ports and assignments vertically for readability

input  logic clk,
input  logic rst_n,
input  logic [3:0] data_in,
output logic [3:0] data_out

8. 📌 Best Practices

- Use '0 instead of hardcoded zeros (0) for clarity
- Avoid latches by properly using always_ff and always_comb
- Keep modules short, single-purpose, and well-documented
- Use parameter instead of magic numbers

9. 🧪 Simulation Tips

- Use $display, $monitor, $dumpvars, and $finish in testbenches
- Print useful debug info with module or testbench name
- Add simple assertions to validate design behavior (if needed)