module four_bit_comparator(a,b,aeqb,agtb,altb);
input [3:0]a,b;
output reg aeqb,agtb,altb;
reg [3:0]i;
always @(a,b) begin
     i[3] = ~(a[3]^b[3]);
     i[2] = ~(a[2]^b[2]);
     i[1] = ~(a[1]^b[1]);
     i[0] = ~(a[0]^b[0]);
     aeqb = (i[3])&(i[2])&(i[1])&(i[0]);
     agtb = (a[3]&(~b[3]))|(i[3]&(a[2]&(~b[2])))|(i[3]&i[2]&(a[1]&(~b[1])))|(i[3]&i[2]&i[1]&(a[0]&(~b[0])));
     altb = ~(agtb|aeqb);
end
endmodule