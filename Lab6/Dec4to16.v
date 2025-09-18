`include "Dec3to8_FOR.v"
module Dec4to16(w,en,y);

input [3:0]w;
input en;
output [0:15]y;


Dec3to8_FOR Dec3to8_FOR_1(w[2:0],(~w[3]&en),y[0:7]);
Dec3to8_FOR Dec3to8_FOR_2(w[2:0],(w[3]&en),y[8:15]);

endmodule