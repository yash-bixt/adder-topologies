module tb_csa;

reg [3:0] a, b;
reg cin;
wire [3:0] s;
wire co;

csa uut(.a(a), .b(b), .cin(cin), .s(s), .co(co));

initial begin
    a = 4'b0101; b = 4'b0011; cin = 0; #10;
    a = 4'b0101; b = 4'b0011; cin = 1; #10;
    a = 4'b1111; b = 4'b1111; cin = 0; #10;
    a = 4'b1111; b = 4'b1111; cin = 1; #10;
    $display("Simulation finished");
end

endmodule
