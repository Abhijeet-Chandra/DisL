`include "Dec2to4.v"
`timescale 1ns/1ns

module Dec2to4_tb();

reg [1:0]w;
reg en;
wire [0:3]y;

Dec2to4 Dec2to4_ins(w,en,y);

initial begin
    $dumpfile("Dec2to4_tb.vcd");
    $dumpvars(0,Dec2to4_tb);

    for(integer i=0; i<4; i=i+1)begin
        en=0; w = i;
        #10;
    end

    for(integer i=0; i<4; i=i+1)begin
        en=1; w = i;
        #10;
    end
end
endmodule