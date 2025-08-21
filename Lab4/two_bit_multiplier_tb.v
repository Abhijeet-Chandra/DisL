`timescale 1ns/1ns
`include "two_bit_multiplier.v"

module two_bit_multiplier_tb();

reg [1:0] a,b;
wire [3:0]p;

two_bit_multiplier two_bit_multiplier_instance(a,b,p);

initial begin
    $dumpfile("two_bit_multiplier_tb.vcd");
    $dumpvars(0,two_bit_multiplier_tb);

    //2 x 2 = 4
    a = 2; b = 2;
    #20;
    //3 x 2 = 6
    a = 3; b = 2;
    #20;
    $display("Test completed successfully.");
    $finish;
end
endmodule

