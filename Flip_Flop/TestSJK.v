module TestSJK;
reg clk,j,k,r;
wire q;

SyncJK sjk(clk,j,k,r,q);

always #2 clk=~clk;

initial begin
clk=0;   r=1;
j=1;     k=0;
#7       j=1;    k=1;
#6       j=1;    k=1;
#6       j=0;    k=0;
#6       j=0;    k=1;
#7       r=0;
end
endmodule
    