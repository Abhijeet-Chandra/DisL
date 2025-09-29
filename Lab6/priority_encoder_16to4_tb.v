`include "priority_encoder_16to4.v"
`timescale 1ns/1ns

module priority_encoder_16to4_tb();

reg [15:0]w;
wire z;
wire [3:0]y;

priority_encoder_16to4 priority_encoder_16to4_ins(w,z,y);

initial begin
    $dumpfile("priority_encoder_16to4_tb.vcd");
    $dumpvars(0,priority_encoder_16to4_tb);

    for(integer i=0; i<65536; i=i+1)begin
        w = i; #10;
    end

end
endmodule