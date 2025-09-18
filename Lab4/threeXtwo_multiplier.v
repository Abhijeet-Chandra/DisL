`include "half_adder.v"
`include "full_adder.v"

module threeXtwo_multiplier(a,b,p);
input [1:0]a;
input [2:0]b;
output [4:0]p;
wire [4:2]c;
assign p[0] = a[0]&b[0];
full_adder full_adder_1((b[1]&a[0]),(b[0]&a[1]),1'b0,p[1],c[2]);
full_adder full_adder_2((b[2]&a[0]),(b[1]&a[1]),c[2],p[2],c[3]);
full_adder full_adder_3((b[2]&a[1]),1'b0,c[3],p[3],c[4]);
assign p[4] = c[4];
endmodule