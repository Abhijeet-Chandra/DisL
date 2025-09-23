module priority_encoder_16to4(w,en,y);

input [15:0]w;
output reg en;
output reg [3:0]y;

always @(w)begin
    en = 0;
    y = 4'b0000;
    begin : for_loop
    for(integer i=15; i>=0; i = i-1) begin
        if(w[i])begin
            en = 1;
            y = i[3:0];
            disable for_loop;
        end
    end
    end
end
endmodule