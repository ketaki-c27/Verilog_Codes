module com_4B(a,b,g,l,e);
input [3:0] a,b;
output reg g,l,e;

always @(a, b)
begin
    if (a < b)
        l = 1'b1;
    else
        l = 1'b0;

    if (a > b)
        g = 1'b1;
    else
        g = 1'b0;

    if (a == b)
        e = 1'b1;
    else
        e = 1'b0;
end

endmodule
