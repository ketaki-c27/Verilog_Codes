module Test_FA;
reg a,b,cin;
wire s,cout;

FAdder fa(a,b,cin,s,cout);

initial begin
a=0; b=0; cin=0;
#8 cin=1;
end

always #2 a=~a;
always #4 b=~b;

endmodule
