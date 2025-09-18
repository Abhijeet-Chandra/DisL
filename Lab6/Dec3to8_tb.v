`include "Dec3to8.v"
`timescale 1ns/1ns

module Dec3to8_tb();

reg [2:0]w;
reg en;
wire [0:7]y;

Dec3to8 Dec3to8_ins(w,en,y);

initial begin
    $dumpfile("Dec3to8_tb.vcd");
    $dumpvars(0,Dec3to8_tb);

    for(integer i=0; i<8; i=i+1)begin
        en = 0; w = i;
        #10;
    end

    for(integer i=0; i<8; i=i+1)begin
        en = 1; w = i;
        #10;
    end
end
endmodule