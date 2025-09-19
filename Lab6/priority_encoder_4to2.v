module priority_encoder_4to2(w,en,y);
input [3:0]w;
output reg en;
output reg[1:0]y;

always @(w) begin
    en = 1;
    casex (w)
        4'b1xxx: y = 3;
        4'b01xx: y = 2;
        4'b001x: y = 1;
        4'b0001: y = 0; 
        default: 
        begin
            en = 0;
            y = 2'bx;      
        end
    endcase
end
endmodule