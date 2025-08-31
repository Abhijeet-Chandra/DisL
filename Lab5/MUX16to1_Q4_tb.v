`include "MUX16to1_Q4.v"
`timescale 1ns/1ns

module MUX16to1_Q4_tb();

reg [0:15] w;
reg [3:0] s;
wire f;

MUX16to1_Q4 MUX16to1_Q4_instance(w,s,f);

initial begin
    $dumpfile("MUX16to1_Q4_tb.vcd");
    $dumpvars(0,MUX16to1_Q4_tb);

    // 
    
    for (integer i = 0; i < 16; i = i + 1) begin
        w = 16'hACF1; s= i;
        #10;   
    end
    
    for (integer i = 0; i < 16; i = i + 1) begin
        w = 16'hCBE3; s= i;
        #10;   
    end

end
endmodule