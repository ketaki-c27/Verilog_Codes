module AsyncJK(clk,j,k,r,q);
input clk,j,k,r;
output reg q;

always@(posedge clk or negedge r)
begin
if(~r)
q=0;

else
begin
case({j,k})
2'b00 : q=q;
2'b01 : q=1;
2'b10 : q=0;
2'b11 : q=~q;
endcase
end
end
endmodule

