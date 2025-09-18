`timescale 1ns/1ns
`include "threeXtwo_multiplier.v"

module threeXtwo_multiplier_tb();

reg [1:0] a;
reg [2:0]b;
wire [4:0]p;

threeXtwo_multiplier threeXtwo_multiplier_ins(a,b,p);

initial begin
    $dumpfile("threeXtwo_multiplier_tb.vcd");
    $dumpvars(0,threeXtwo_multiplier_tb);

    a = 2; b = 7;
    #20;
    a = 3; b = 5;
    #20;
    $display("Test completed successfully.");
    $finish;
end
endmodule

