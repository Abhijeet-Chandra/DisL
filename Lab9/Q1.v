`include "JKFF.v"
module Q1(E,x,clk,A,B,reset);
input E,x,clk,reset;
output A,B;

wire Ja,Ka,Jb,Kb;

assign Ja = (B&E&x)|((~B)&E&(~x));
assign Ka = (B&E&x)|((~B)&E&(~x));
assign Jb = E;
assign Kb = E;

JKFF JKFF_A(Ja,Ka,clk,A,reset);
JKFF JKFF_B(Jb,Kb,clk,B,reset);
endmodule