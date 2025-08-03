# Adder Topologies

This project explores three commonly used digital adder topologies implemented in Verilog: Ripple Carry Adder (RCA), Carry Lookahead Adder (CLA), and Carry Select Adder (CSLA). These architectures are fundamental building blocks in arithmetic logic units (ALUs) and digital processors.

### 🔷 Ripple Carry Adder (RCA)
A basic adder composed of a chain of full adders where the carry output of each stage is passed to the next. It is easy to implement but suffers from high propagation delay as each bit must wait for the previous carry to propagate.

### ⚡ Carry Lookahead Adder (CLA)
An optimized adder that improves speed by computing carry signals in advance using generate and propagate logic. It significantly reduces the delay by avoiding the sequential ripple of carries.

### 🔀 Carry Select Adder (CSLA)
This adder partitions the bits into groups and computes two possible sums for each group — one assuming a carry-in of 0 and the other with 1. The actual sum is selected based on the incoming carry, offering a balanced trade-off between speed and area.

---

🛠️ **Designed and tested in Xilinx Vivado Suite**
