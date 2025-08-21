`include "four_bit_adder.v"
module adder_subtractor(a,b,s,cin,cout);

input [3:0] a,b;
input cin;
output [3:0] s;
output cout;


four_bit_adder four_bit_adder_instance(a,b^{4{cin}},s,cin,cout);

endmodule


