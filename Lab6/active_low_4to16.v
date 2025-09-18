`include "active_low_2to4.v"

module active_low_4to16(w,en,y);

input [3:0]w;
input en;
output [0:15]y;
wire [0:3]c;
active_low_2to4 active_low_2to4_1a(w[3:2],en,c);
active_low_2to4 active_low_2to4_2a(w[1:0],~c[0],y[0:3]);
active_low_2to4 active_low_2to4_2b(w[1:0],~c[1],y[4:7]);
active_low_2to4 active_low_2to4_2c(w[1:0],~c[2],y[8:11]);
active_low_2to4 active_low_2to4_2d(w[1:0],~c[3],y[12:15]);
endmodule