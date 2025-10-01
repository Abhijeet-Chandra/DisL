`include "ring_counter_4bit.v"
`timescale 1ns/1ns

module ring_counter_4bit_tb();

reg clk,clr;
wire [3:0]Q;

ring_counter_4bit ring_counter_4bit_ins(Q,clk,clr);

initial begin
    $dumpfile("ring_counter_4bit_tb.vcd");
    $dumpvars(0,ring_counter_4bit_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    clr = 1; #4;
    clr = 0; #30;
    $finish;
end
endmodule