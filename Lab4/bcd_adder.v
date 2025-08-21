`include "four_bit_adder.v"
`timescale 1ns/1ns

module bcd_adder(a,b,cin,s,cout2);

input [3:0]a,b;
input cin;
output[3:0]s;
output cout2;
wire [3:0]z;
wire k,c;
four_bit_adder four_bit_adder_instance0(a,b,z,cin,k);
assign c = k|(z[3]&z[2])|(z[1]&z[3]);
four_bit_adder four_bit_adder_instance1(z,{1'b0,c,c,1'b0},s,cin,cout2);
endmodule