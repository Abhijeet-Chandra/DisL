`timescale 1ns/1ns
`include "full_adder.v"

module full_adder_tb();
reg a,b,c;
wire s,cout;

full_adder fa_instance(a,b,c,s,cout);

initial begin

$dumpfile("full_adder_tb.vcd");
$dumpvars(0,full_adder_tb);
a = 0; b = 0; c = 0;
#10;
a = 0; b = 0; c = 1;
#10;
a = 0; b = 1; c = 0;
#10;
a = 0; b = 1 ; c = 1;
#10;
a = 1; b = 0; c = 0;
#10;
a = 1; b = 0; c = 1;
#10; 
a = 1; b = 1; c = 0;
#10;
a = 1; b = 1; c = 1;
#10;
$display("Test completed successfully.");
$finish;
end
endmodule