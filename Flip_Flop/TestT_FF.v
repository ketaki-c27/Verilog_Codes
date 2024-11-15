module TestT_FF;
reg clk,t,r;
wire q;

T_FF t2(clk,t,r,q);

always #2 clk=~clk;

initial begin
clk=0;   r=0;    t=0;
#3       r=1;
#4       t=1;
#20      t=0;
#10      t=1;
#15       r=0;
#3;
end
endmodule
    