module demux2_1(i,s,y0,y1);
input i,s;
output reg y0,y1;

always@(*)
begin
if(s==1'b0)
begin 
y0=i;
y1=0;
end
else begin 
y1=i;
y0=0;
end
end

endmodule
