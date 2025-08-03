`timescale 1ns / 1ps

module tb();

reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire co;

cla dut(a, b, cin, s, co);

initial begin
a = 4'b0001; b = 4'b0010; cin = 0;
#10;
a = 4'b0101; b = 4'b0011; cin = 1;
#10;
a = 4'b1111; b = 4'b1111; cin = 0;
#10;
$display("finished simulation");
end

endmodule
