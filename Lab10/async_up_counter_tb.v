`include "async_up_counter.v"
`timescale 1ns/1ns

module async_up_counter_tb();

reg clk, clr;
wire [3:0]Q;

async_up_counter async_up_counter_ins(Q,clk,clr);

initial begin
    $dumpfile("async_up_counter_tb.vcd");
    $dumpvars(0,async_up_counter_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    clr = 1; #4;
    clr = 0; #60;
    $finish;
end
endmodule