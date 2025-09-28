module shiftReg6Bit(W,clk,Q);

input W,clk;
output reg[5:0]Q;

always@(posedge clk)begin
    Q[5]<=W;
    Q[4]<=Q[5];
    Q[3]<=Q[4];
    Q[2]<=Q[3];
    Q[1]<=Q[2];
    Q[0]<=Q[1];
end
endmodule