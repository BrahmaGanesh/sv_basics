# SystemVerilog Coding Style Guide ✍️

This guide defines **consistent** coding conventions for writing SystemVerilog RTL and Testbench code in this repository.  
Following these practices ensures your design is **readable**, **reusable**, and **review-friendly**.

---

## 1️⃣ File Naming

- Use **lowercase with underscores** for all filenames:  
  ✅ `counter.sv`, `mux2to1.sv`, `priority_encoder.sv`  
- Avoid CamelCase, spaces, or hyphens in filenames.

---

## 2️⃣ Module Declaration Style

- Use clean, aligned formatting for module headers.
- Always include port directions, types, and names clearly.

```systemverilog
module module_name #(
  parameter WIDTH = 8
)(
  input  logic              clk,
  input  logic              rst_n,
  input  logic [WIDTH-1:0]  data_in,
  output logic [WIDTH-1:0]  data_out
);

## 3. 🧠 Naming Conventions

Use consistent naming styles across all modules and files.

| Element         | Convention     | Example           |
|----------------|----------------|-------------------|
| Module names    | lowercase_words | `shift_register`  |
| Parameters      | UPPERCASE       | `WIDTH`           |
| Ports & signals | snake_case      | `data_out`, `clk` |
| Constants       | UPPERCASE       | `DEFAULT_VALUE`   |
| Testbench UUT   | uut             | my_module uut(...)|


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
- Avoid over-commenting obvious lines.

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

9️. Testbench Guidelines
- Testbench directory: tb/
- Name TB as <module_name>_tb.sv
- Always instantiate DUT as uut

my_module uut (
  .clk    (clk),
  .rst_n  (rst_n),
  .data_in(data_in),
  .data_out(data_out)
);
- Use $display, $monitor, $dumpvars, $finish for debug & waveform dumping.
- Print TB name in logs for clarity.
- Add simple assertions for quick bug detection.