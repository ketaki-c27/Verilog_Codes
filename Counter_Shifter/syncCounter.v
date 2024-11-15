module syncCounter(A,clk,clr,load,ena,enb,Q);
input [3:0] A;
input clk,clr,load,ena,enb;
output reg [3:0] Q;

always@(posedge clk)
begin

if(clr==0)
begin 
Q<=4'b0000;
end

else if(load==0)
begin
Q<=A;
end

else if(ena==1 && enb==1)
begin
Q<=Q+1;
end

end
endmodule
 