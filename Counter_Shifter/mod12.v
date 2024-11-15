module mod12(A,clk,clr,load,Q);
input [3:0] A;
input clk,load,clr;
output reg [3:0] Q;
wire [3:0] y;
wire x=1;

syncCounter m12(A,clk,clr,load,x,x,y);

always@(posedge clk)
begin
if(y>=4'b1011)
Q<=4'b0000;

else

Q<=y;
end

endmodule
