`include "TFF.v"

module async_up_counter(Q,clk,clr);

input clk, clr;
output [3:0]Q;


TFF TFF0(1'b1,clk,Q[0],clr);
TFF TFF1(1'b1,Q[0],Q[1],clr);
TFF TFF2(1'b1,Q[1],Q[2],clr);
TFF TFF3(1'b1,Q[2],Q[3],clr);

endmodule
