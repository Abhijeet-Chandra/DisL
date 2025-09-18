`include "active_low_4to16.v"
`timescale 1ns/1ns

module active_low_4to16_tb();

reg [3:0]w;
reg en;
wire [0:15]y;

active_low_4to16 active_low_4to16_ins(w,en,y);

initial begin
    $dumpfile("active_low_4to16_tb.vcd");
    $dumpvars(0,active_low_4to16_tb);

    for(integer i=0; i<16; i=i+1)begin
        en = 0; w = i;
        #10;
    end

    for(integer i=0; i<16; i=i+1)begin
        en = 1; w = i;
        #10;
    end
end
endmodule