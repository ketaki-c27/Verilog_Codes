module Test_mod12();
reg [3:0] A;
reg clk,clr,load;
wire [3:0] Q;

mod12 m2(A,clk,clr,load,Q);

initial begin
clk=0;    A=4'b0000;   clr=1;    load=1;
#2 load=0;
#2 load=1; 
#101 clr=0; load=0;
#6 load=1; A=4'b0011;
#9 clr=1; load=0;
#3 load=1;

end

always #2 clk=~clk;

endmodule

