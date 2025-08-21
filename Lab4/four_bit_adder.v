`include "full_adder.v"
module four_bit_adder(a,b,s,cin,cout);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire [3:1] c;
full_adder stage0(a[0],b[0],cin,s[0],c[1]);
full_adder stage1(a[1],b[1],c[1],s[1],c[2]);
full_adder stage2(a[2],b[2],c[2],s[2],c[3]);
full_adder stage3(a[3],b[3],c[3],s[3],cout);
endmodule