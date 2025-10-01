module ring_counter_4bit(Q,clk,clr);
input clk,clr;
output reg [3:0]Q;

always @(posedge clk,posedge clr)begin
    if(clr) Q<=4'b1000;
    else begin
        Q[3]<=Q[0];
        Q[2]<=Q[3];
        Q[1]<=Q[2];
        Q[0]<=Q[1];
    end
end
endmodule