`timescale 1ns/1ns
`include "bcd_adder.v"

module bcd_adder_tb();

reg [3:0]a,b;
reg cin;
wire[3:0]s;
wire cout2;

bcd_adder bcd_adder(a,b,cin,s,cout2);

initial begin
    $dumpfile("bcd_adder_tb.vcd");
    $dumpvars(0,bcd_adder_tb);

    a = 7; b = 8; cin = 0;
    #20;

    a = 4; b = 2; cin = 0;
    #20;
    $display("Test completed successfully.");
$finish;
end
endmodule