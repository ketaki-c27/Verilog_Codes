module test_CA;
reg [3:0] a,b;
wire[3:0] ans;
reg cin;
wire cout;

integer i,j,k;
controlled_adder t(a,b,cin,ans,cout);
initial begin
a=0;
b=0;
cin=0;
for(k=0;k<2;k=k+1)
begin
for(i=0;i<16;i=i+1)
begin 
for(j=0;j<16;j=j+1)
begin
#2;
b=b+1;
end
a=a+1;
end
cin=1;
end
end
endmodule

