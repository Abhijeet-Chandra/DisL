`timescale 1ns/1ns
`include "four_bit_comparator.v"

module four_bit_comparator_tb();

reg [3:0]a,b;
wire aeqb,agtb,altb;

four_bit_comparator four_bit_comparator_instance(a,b,aeqb,agtb,altb);

initial begin

    $dumpfile("four_bit_comparator_tb.vcd");
    $dumpvars(0,four_bit_comparator_tb);

    //4==4
    a = 4; b =4;
    #10;

    //5<6
    a = 5; b = 6;
    #10;
    //6>2;
    a = 6; b = 2;
    #10;
    $display("Test completed successfully.");
    $finish;
end
endmodule
