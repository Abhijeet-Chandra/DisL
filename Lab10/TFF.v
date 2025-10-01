module TFF(T,clk,Q,reset);

input T,clk,reset;
output reg Q;

always @(negedge clk, posedge reset)begin
    if(reset) Q<=0;
    else begin
        if(T==0) Q<=Q;
        else Q<=~Q;
    end
end
endmodule