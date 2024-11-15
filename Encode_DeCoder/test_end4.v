module test_end4;
reg [3:0] a;
wire [1:0] y;

integer i;
encoder4_2 e(a,y);

initial begin
a=0;
for(i=0;i<16;i=i+1)
begin
#2 a=a+1;
end 
end
endmodule
