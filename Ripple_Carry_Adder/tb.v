`timescale 1ns / 1ps

module tb;

reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire co;

rca dut (.a(a), .b(b), .cin(cin), .s(s), .co(co));

initial begin
  a = 4'b0100; b = 4'b0101; cin = 0; #10;
  a = 4'b1000; b = 4'b1001; cin = 0; #10;
  $finish;
end

endmodule
