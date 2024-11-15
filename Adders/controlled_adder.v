module controlled_adder(a,b,cin,ans,cout);
input [3:0] a,b;
input cin;
output [3:0] ans;
output cout;
wire [4:0] c;
wire [3:0] x;
assign c[0]=cin;

genvar i;
generate 

for(i=0;i<4;i=i+1)
begin:FA
xor X(x[i],b[i],c[i]);
FAdder fa(a[i],x[i],c[i],ans[i],c[i+1]);
end

assign cout=c[4];

endgenerate

endmodule
