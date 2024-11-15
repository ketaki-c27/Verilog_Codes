module test_decoder2_4;
reg [1:0] a;
reg e;
wire [3:0] y;

decoder2_4 c(a,e,y);
integer i,k;
initial begin
a=0;
e=0;
for(k=0;k<2;k=k+1)
begin
for(i=0;i<4;i=i+1)
begin
#2 a=a+1;
end
e=1;
end
end
endmodule
