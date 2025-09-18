`include "Dec4to16.v"
`timescale 1ns/1ns

module Dec4to16_tb();

reg [3:0]w;
reg en;
wire [0:15]y;

Dec4to16 Dec4to16_ins(w,en,y);

initial begin
    $dumpfile("Dec4to16_tb.vcd");
    $dumpvars(0,Dec4to16_tb);

    for(integer i=0; i<16; i=i+1)begin
        en = 0; w = i;
        #10;
    end

    for(integer i=0; i<15; i=i+1)begin
        en = 1; w = i;
        #10;
    end
end
endmodule