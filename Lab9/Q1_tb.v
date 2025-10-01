`include "Q1.v"
`timescale 1ns/1ns

module Q1_tb();

reg E,x,clk,reset;
wire A,B;

Q1 Q1_ins(E,x,clk,A,B,reset);

initial begin
    $dumpfile("Q1_tb.vcd");
    $dumpvars(0,Q1_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    E = 0; x = 0; reset = 1; #10;
    E = 0; x = 0; reset = 0; #10;
    E = 0; x = 1; reset = 0; #10;
    E = 1; x = 0; reset = 0; #10;
    E = 1; x = 1; reset = 0; #10;
    E = 0; x = 0; reset = 0; #10;
    E = 0; x = 1; reset = 0; #10;
    E = 1; x = 0; reset = 0; #10;
    E = 1; x = 1; reset = 0; #10;
    $finish;
end
endmodule
