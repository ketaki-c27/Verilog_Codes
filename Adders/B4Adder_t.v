module B4Adder_t#(parameter n=8);
reg [n-1:0] a,b;
wire[n-1:0] sum;
reg cin;
wire cout;

integer i,j;
B4Adder t(a,b,cin,sum,cout);
initial begin
a=0;
b=0;
cin=0;
for(i=0;i<n*n;i=i+1)
begin 
for(j=0;j<n*n;j=j+1)
begin
#2;
b=b+1;
end
a=a+1;
end
end
endmodule

