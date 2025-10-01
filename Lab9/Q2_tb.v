`include "Q2.v"
`timescale 1ns/1ns

module Q2_tb();

reg x,clk,reset;
wire A,B;

Q2 Q2_ins(x,clk,A,B,reset);

initial begin
    $dumpfile("Q2_tb.vcd");
    $dumpvars(0,Q2_tb);
end

initial begin
    clk= 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 1; x = 0; #5;      
    reset = 0; #20;            

    x = 0; #40;                
    x = 1; #40;                
    x = 0; #40;
    x = 1; #40;

    $finish;
end

endmodule