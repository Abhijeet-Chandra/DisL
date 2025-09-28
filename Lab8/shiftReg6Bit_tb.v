`include "shiftReg6Bit.v"
`timescale 1ns/1ns

module shiftReg6Bit_tb();

reg W,clk;
wire [5:0]Q;

shiftReg6Bit shiftReg6Bit_ins(W,clk,Q);

initial begin
    $dumpfile("shiftReg6Bit_tb.vcd");
    $dumpvars(0,shiftReg6Bit_tb);
end

initial begin
    clk = 0;
    forever #10 clk = ~clk;
end

initial begin
    W = 1'b0;  #10;
    W = 1'b1;  #10;   
    W = 1'b0;  #20;
    W = 1'b1;  #20;
    W = 1'b1;  #20;
    W = 1'b0;  #20;
    W = 1'b0;  #20;  
    $finish;
end
endmodule