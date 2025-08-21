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

    // s0 = 0;
    s0 = 0; w[0] = 1; w[1] = 0;
    #10;

    //s0 = 1;
    s0 = 1; w[0] = 1; w[1] = 0;
    #10;
    $display("Test completed successfully.");
    $finish;
end
endmodule
