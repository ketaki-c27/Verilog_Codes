module FAdder(a,b,cin,sum,cout);
input a,b,cin;
output reg sum,cout;

always@(a or b)
begin
sum<=a^b^cin;
cout<=(a&b) | (b&cin) | (a&cin);
end
endmodule
