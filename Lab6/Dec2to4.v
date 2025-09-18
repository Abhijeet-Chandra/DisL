module Dec2to4(w,en,y);

input [1:0]w;
input en;
output reg [0:3]y;

always@(en,w)begin
    if(en==0) begin
        y = 4'b0000;
    end
    else if(w==0) begin
        y = 4'b1000;
    end
    else if(w==1) begin
        y = 4'b0100;
    end
    else if(w==2) begin
        y = 4'b0010;
    end
    else begin
        y = 4'b0001;
    end
end
endmodule