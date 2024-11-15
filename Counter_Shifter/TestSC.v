module TestSC();
reg [3:0] A;
reg clk,clr,load,ena,enb;
wire [3:0] Q;

syncCounter sc(A,clk,clr,load,ena,enb,Q);

initial begin
clk=0;
A=4'b0000;
clr=1;
load=1;
ena=1;
enb=1;
#2 load=0;
#2 load=1; 
#101 clr=0; load=0;
#6 load=1; A=4'b0101;
#9 clr=1; load=0;
#3 load=1;
#13 ena=0;
#6 ena=1;
end

always #2 clk=~clk;

endmodule

