module test_decoder3_8;
reg [2:0]s;
wire [7:0]y;
decoder3_8 d(s,y);

integer k;

initial begin
s=0;
for(k=0;k<8;k=k+1)
begin
#2 s=s+1;
end
end
endmodule
 