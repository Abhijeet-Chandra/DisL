`timescale 1ns/1ns
`include "signed_comparator.v"

module signed_comparator_tb();

reg signed [3:0]a,b;
wire aeqb,agtb,altb;

signed_comparator signed_comparator_ins(a,b,aeqb,agtb,altb);

initial begin

    $dumpfile("signed_comparator_tb.vcd");
    $dumpvars(0,signed_comparator_tb);

    
    a = 7; b =-8;
    #10;

    a = -6; b = 6;
    #10;

    a = 6; b = 2;
    #10;

    a = 4; b = 4;
    #10;
    $display("Test completed successfully.");
    $finish;
end
endmodule
