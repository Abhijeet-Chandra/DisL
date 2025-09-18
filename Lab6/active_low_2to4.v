module active_low_2to4(w,en,y);

input [1:0]w;
input en;
output reg [0:3]y;

always @(w,en) begin
    case ({en,w})
        4: y = 4'b0111;
        5: y = 4'b1011;
        6: y = 4'b1101;
        7: y = 4'b1110;
        default: y = 4'b1111;
    endcase
end
endmodule