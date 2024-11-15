module Dtest_mux8;
reg i;
reg [2:0]s;
wire [7:0]y;
mux8_1 m(i,s,y);

integer j,k;

initial begin
i=0;
s=0;
for(j=0;j<8;j=j+1)
begin
for(k=0;k<2;k=k+1)
begin
#2 i=i+1;
end
s=s+1;
end
end
endmodule
 