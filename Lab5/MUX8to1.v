module MUX8to1(w,s,f);

input [0:7] w;
input [2:0] s;

output reg f;

always @(w,s) begin
    f = s[2] ? (s[1]?(s[0]?w[7]:w[6]):(s[0]?w[5]:w[4])):(s[1]?(s[0]?w[3]:w[2]):(s[0]?w[1]:w[0]));
end
endmodule