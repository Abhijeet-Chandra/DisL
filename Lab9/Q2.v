`include "TFF.v"

module Q2(x,clk,A,B,reset);
input x,clk,reset;
output A,B;

wire Ta, Tb;

assign Ta = ((~A)&B)|(B&(~x));
assign Tb = ((~B)&(~x))|(A&(~x))|((~A)&B&x);

TFF TFF_A(Ta,clk,A,reset);
TFF TFF_B(Tb,clk,B,reset);

endmodule