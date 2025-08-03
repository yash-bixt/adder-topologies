`timescale 1ns / 1ps

module fa(
input a,b,cin,
output s,
output co
);


assign s = a^b^cin;
assign co = a&b | (cin&(a^b));

endmodule


module rca(
input [3:0] a,b,
input cin,
output [3:0] s,
output co
);

wire c0,c1,c2;
    
fa fa0(.a(a[0]),.b(b[0]),.cin(cin),.s(s[0]),.co(c0));

fa fa1(.a(a[1]),.b(b[1]),.cin(c0),.s(s[1]),.co(c1));

fa fa2(.a(a[2]),.b(b[2]),.cin(c1),.s(s[2]),.co(c2));

fa fa3(.a(a[3]),.b(b[3]),.cin(c2),.s(s[3]),.co(co));


    
    
endmodule
