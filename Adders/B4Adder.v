module B4Adder(a,b,cin,sum,cout);
parameter n=8;
input [n-1:0] a,b;
input cin;
output reg [n-1:0] sum;
output reg cout;
reg [n:0] c;

//assign c[0]=cin;
//
//genvar i;
//generate 
//for(i=0;i<4;i=i+1)
//begin:FA
//
//FAdder fa(a[i],b[i],c[i],sum[i],c[i+1]);
//end
//assign cout=c[4];
//endgenerate

integer i;
always@(*)
begin
c[0]=cin;
for(i=0;i<n;i=i+1)
begin
sum[i]=a[i]^b[i]^c[i];
c[i+1]=(a[i] & b[i]) | (c[i] & b[i]) | (a[i] & c[i]);
end
cout=c[4];
end 

endmodule
