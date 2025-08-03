# Adder Topologies

This project explores three commonly used 4-bit digital adder topologies implemented in Verilog: 4-bit Ripple Carry Adder (RCA), 4-bit Carry Lookahead Adder (CLA), and 4-bit Carry Select Adder (CSLA). These architectures are fundamental building blocks in arithmetic logic units (ALUs) and digital processors.

### 🔷 4-bit Ripple Carry Adder (RCA)
A basic adder composed of a chain of full adders where the carry output of each stage is passed to the next. It is easy to implement but suffers from high propagation delay as each bit must wait for the previous carry to propagate.  
**Time Complexity:** O(n)

### ⚡ 4-bit Carry Lookahead Adder (CLA)
An optimized adder that improves speed by computing carry signals in advance using generate and propagate logic. It significantly reduces the delay by avoiding the sequential ripple of carries.  
**Time Complexity:** O(log n)

### 🔀 4-bit Carry Select Adder (CSLA)
This adder partitions the bits into groups and computes two possible sums for each group — one assuming a carry-in of 0 and the other with 1. The actual sum is selected based on the incoming carry, offering a balanced trade-off between speed and area.  
**Time Complexity:** O(√n)

---

🛠️ **Designed and tested in Xilinx Vivado Suite**
