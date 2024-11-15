module ShiftReg(a,clk,s,clr,q);
input clk,clr;
input [3:0] a;
input [1:0] s;
output reg [3:0] q;
wire x=0;

always@(posedge clk or negedge clr)
begin

if(!clr)
q=4'b0000;

else begin
case(s)
2'b01 : q<={q[2:0],x};
2'b10 : q<={x,q[3:1]};
2'b11 : q<=a;
default : q=q;
endcase
end
end
endmodule
