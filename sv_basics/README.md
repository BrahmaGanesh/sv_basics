# SystemVerilog Basics 🚀

A clean, beginner-friendly collection of SystemVerilog RTL modules **with testbenches** and a **coding style guide**.  
Perfect for **students**, **interns**, and **entry-level engineers** aiming to master ASIC/FPGA fundamentals while following consistent, industry-inspired coding practices.

---

## 📂 Project Structure

sv_basics/
├── src/ # RTL source files
│ ├── alu.sv
│ ├── counter.sv
│ ├── mux2to1.sv
│ ├── dff_async.sv
│ ├── decoder_3to8.sv
│ ├── encoder_8to3.sv
│ ├── priority_encoder.sv
│ ├── shift_register.sv
│ ├── fsm_traffic_light.sv
│ └── arbiter_round_robin.sv
│
├── tb/ # Testbench files
│ ├── alu_tb.sv
│ ├── counter_tb.sv
│ ├── mux2to1_tb.sv
│ ├── dff_async_tb.sv
│ ├── decoder_3to8_tb.sv
│ ├── encoder_8to3_tb.sv
│ ├── priority_encoder_tb.sv
│ ├── shift_register_tb.sv
│ ├── fsm_traffic_light_tb.sv
│ └── arbiter_round_robin_tb.sv
│
├── style_guide.md
└── README.md


---

## 🎯 Goals

- ✅ Promote **clean and reusable** SystemVerilog code  
- ✅ Provide **ready-to-run RTL + TB examples**  
- ✅ Build **strong fundamentals** for ASIC/FPGA/VLSI interviews  
- ✅ Follow a **consistent style guide** for professional readability  

---

## 🛠 How to Use

1. **Read** `style_guide.md` for naming, formatting, and RTL/TB best practices.  
2. **Simulate** any module using your favorite simulator (e.g., Icarus Verilog, ModelSim, QuestaSim, Verilator).  
3. **Modify & extend** testbenches to improve coverage.  
4. **Contribute** by adding new modules or improving existing ones.  

---

## 📚 Concepts Covered

- `always_ff` for sequential logic  
- `always_comb` for combinational logic  
- Parameterized designs  
- Active-low asynchronous reset conventions  
- Standard modules: counters, muxes, encoders, decoders  
- FSM design  
- Arbitration logic  
- ALU & shift registers  

---

## 📌 Upcoming

- More FSM examples  
- Advanced ALU operations  
- Bus interface modules  
- Parameterized FIFO  

---

## 👨‍💻 Author

**Brahma Ganesh Katrapalli** – Passionate about VLSI & ASIC Verification  
📎 [LinkedIn](https://www.linkedin.com/in/katrapallibrahmaganesh)  
⭐ Star this repo if you find it useful!
