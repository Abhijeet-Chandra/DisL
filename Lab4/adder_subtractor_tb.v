`timescale 1ns/1ns;
`include "adder_subtractor.v"

module adder_subtractor_tb();

reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;

adder_subtractor adder_subtractor_instance(a,b,s,cin,cout);

initial begin

    $dumpfile("adder_subtractor_tb.vcd");
    $dumpvars(0,adder_subtractor_tb);

    a = 8; b = 10;
    cin = 0;
    #20;
    a = 8; b = 10;
    cin = 1;
    #20;

    $display("Test completed successfully.");
$finish;
end
endmodule