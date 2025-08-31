`include "MUX8to1.v"
`include "MUX2to1.v"
module MUX16to1_Q4(w,s,f);

input [0:15] w;
input [3:0] s;
output f;
wire [0:1]c;
MUX8to1 stage1a(w[0:7],s[2:0],c[0]);
MUX8to1 stage1b(w[8:15],s[2:0],c[1]);
MUX2to1 stage2(c,s[3],f);
endmodule