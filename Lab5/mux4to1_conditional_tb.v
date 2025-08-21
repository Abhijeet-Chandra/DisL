`timescale 1ns/1ns
`include "mux4to1_conditional.v"

module mux4to1_conditional_tb();

reg [0:3] w;
reg [1:0] s;
wire f;

mux4to1_conditional mux4to1_conditional(w,s,f);

initial begin

    $dumpfile("mux4to1_conditional_tb.vcd");
    $dumpvars(0,mux4to1_conditional_tb);

    //case 1:
    w = 4'b1010; s = 2'b00;
    #10;
    w = 4'b1010; s = 2'b01;
    #10;
    w = 4'b1010; s = 2'b10;
    #10;
    w = 4'b1010;  s = 2'b11;
    #10;

    // case 2
    w = 4'b0101; s = 2'b00; 
    #10;
    w = 4'b0101; s = 2'b01; 
    #10;
    w = 4'b0101; s = 2'b10; 
    #10;
    w = 4'b0101; s = 2'b11; 
    #10;
end
endmodule