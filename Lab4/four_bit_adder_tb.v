`include "four_bit_adder.v"
`timescale 1ns/1ns

module four_bit_adder_tb();

reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;


four_bit_adder four_bit_adder_instance(a,b,s,cin,cout);

initial begin
    $dumpfile("four_bit_adder_tb.vcd");
    $dumpvars(0,four_bit_adder_tb);

    //4+7 = 11
    a[3] = 0; a[2] = 1; a[1] = 0; a[0] = 0; //4
    b[3] = 0; b[2] = 1; b[1] = 1; b[0] = 1; //7
    cin = 0;
    #20;
    //8+9 = 17
    a = 8;
    b = 9;
    cin = 0;
    #20;
$display("Test completed successfully.");
$finish;
end
endmodule