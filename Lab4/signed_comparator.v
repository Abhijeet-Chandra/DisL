`timescale 1ns/1ns
`include "full_adder.v"
module signed_comparator(a,b,aeqb,agtb,altb);
input [3:0]a,b;
wire[4:1] c;
wire[3:0]s;
reg Z,N,V;
output reg aeqb,agtb,altb;

full_adder stage0(a[0],~b[0],1'b1,s[0],c[1]);
full_adder stage1(a[1],~b[1],c[1],s[1],c[2]);
full_adder stage2(a[2],~b[2],c[2],s[2],c[3]);
full_adder stage3(a[3],~b[3],c[3],s[3],c[4]);
always @(*) begin
    Z = ~(s[3]|s[2]|s[1]|s[0]);
    N = s[3];
    V = c[3]^c[4];

    altb = N^V;
    aeqb = Z;
    agtb = ~(aeqb|altb);
end
endmodule

