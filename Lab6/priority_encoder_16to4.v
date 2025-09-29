module priority_encoder_16to4(w,z,y);

input [15:0]w;
output reg z;
output reg [3:0]y;

always @(w)begin
    z = 0;
    y = 4'bx;
    begin : for_loop
    for(integer i=15; i>=0; i = i-1) begin
        if(w[i])begin
            z = 1;
            y = i[3:0];
            disable for_loop;
        end
    end
    end
end
endmodule