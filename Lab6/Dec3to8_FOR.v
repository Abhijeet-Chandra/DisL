module Dec3to8_FOR(w,en,y);

input [2:0]w;
input en;
output  reg [0:7]y;

always @(w,en) begin
    for(integer i=0; i<8; i=i+1)begin
        if(en==0) y = 4'b0000;
        else if(w==i) y[i] = 1;
        else y[i] = 0;
    end
end
endmodule