`include "half_adder.v"


module two_bit_multiplier(a,b,p);
input [1:0] a,b;
output [3:0]p;
wire [2:1]c;

assign p[0]  = (a[0]&b[0]);

half_adder half_adder0((a[1]&b[0]),(a[0]&b[1]),p[1],c[1]);
half_adder half_adder1((a[1]&b[1]),c[1],p[2],c[2]);

assign p[3] = c[2];

endmodule