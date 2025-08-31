`include "MUX4to1.v"
module MUX16to1(w,s,f);

input[0:15] w;
input[3:0] s;
wire[0:3] c;
output f;

MUX4to1 MUX4to1_stage1a(w[0:3],s[1:0],c[0]);
MUX4to1 MUX4to1_stage1b(w[4:7],s[1:0],c[1]);
MUX4to1 MUX4to1_stage1c(w[8:11],s[1:0],c[2]);
MUX4to1 MUX4to1_stage1d(w[12:15],s[1:0],c[3]);
MUX4to1 MUX4to1_stage2(c,s[3:2],f);

endmodule
