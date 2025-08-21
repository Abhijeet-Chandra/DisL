`timescale 1ns/1ns
`include "half_adder.v"
module half_adder_tb();
reg a1,b1;
wire s1,cout1;

half_adder ha_instance(a1,b1,s1,cout1);

initial begin
    $dumpfile("half_adder_tb.vcd");
    $dumpvars(0,half_adder_tb);
    a1 = 0;  b1 = 0;
    #10;
    a1=0; b1= 1;
    #10;
    a1=1; b1=0;
    #10;
    a1=1; b1=1;
    #10;
    $finish;
    $display("Test completed successfully.");
end
endmodule

