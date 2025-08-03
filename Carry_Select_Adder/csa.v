`timescale 1ns / 1ps

module fa(
input a, b, cin,
output s,
output co
);
assign s = a ^ b ^ cin;
assign co = (a & b) | (cin & (a ^ b));
endmodule

module rca(
input [3:0] a, b,
input cin,
output [3:0] s,
output co
);
wire c0, c1, c2;

fa fa0(.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .co(c0));
fa fa1(.a(a[1]), .b(b[1]), .cin(c0), .s(s[1]), .co(c1));
fa fa2(.a(a[2]), .b(b[2]), .cin(c1), .s(s[2]), .co(c2));
fa fa3(.a(a[3]), .b(b[3]), .cin(c2), .s(s[3]), .co(co));
endmodule

module mux(
input a, b, sel,
output reg y
);
always @(*) begin
  if (sel == 1'b0)
    y = a;
  else
    y = b;
end
endmodule

module csa(
input [3:0] a, b,
input cin,
output [3:0] s,
output co
);
wire [3:0] s0, s1;
wire c0, c1;

rca r0(.a(a), .b(b), .cin(1'b0), .s(s0), .co(c0));
rca r1(.a(a), .b(b), .cin(1'b1), .s(s1), .co(c1));

mux m0(.a(s0[0]), .b(s1[0]), .sel(cin), .y(s[0]));
mux m1(.a(s0[1]), .b(s1[1]), .sel(cin), .y(s[1]));
mux m2(.a(s0[2]), .b(s1[2]), .sel(cin), .y(s[2]));
mux m3(.a(s0[3]), .b(s1[3]), .sel(cin), .y(s[3]));
mux m4(.a(c0),    .b(c1),    .sel(cin), .y(co));

endmodule
