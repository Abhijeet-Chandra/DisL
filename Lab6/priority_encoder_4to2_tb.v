`include "priority_encoder_4to2.v"
`timescale 1ns/1ns

module priority_encoder_4to2_tb();

reg [3:0]w;
wire en;
wire [1:0]y;

priority_encoder_4to2 priority_encoder_4to2_ins(w,en,y);

initial begin
    $dumpfile("priority_encoder_4to2_tb.vcd");
    $dumpvars(0,priority_encoder_4to2_tb);

    for(integer i=0; i<16; i=i+1)begin
        w = i; #10;
    end

end
endmodule