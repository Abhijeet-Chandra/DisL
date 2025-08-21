`timescale 1ns/1ns
`include "MUX2to1.v"

module MUX2to1_tb();
reg [0:1] w;
reg s0;
wire f;

MUX2to1 MUX2to1_instance(w,s0,f);

initial begin

    $dumpfile("MUX2to1_tb.vcd");
    $dumpvars(0,MUX2to1_tb);

    //case 1: let w = 3
    w = 2'b11; s0 = 0;
    #10
    w = 2'b11; s0 = 1;
    #10

    //case 2: let w = 2
    w = 2'b10; s0 = 0;
    #10
    w = 2'b10; s0 = 1;
    #10
    $display("Test completed successfully.");
    $finish;
end
endmodule
