module TestSR;
reg s,r;
wire q,qb;

SRLatch sr(s,r,q,qb);

initial begin
{s,r}=2'b10;
#4  {s,r}=2'b00;
#4  {s,r}=2'b01;
#4  {s,r}=2'b00;
#4  {s,r}=2'b11;
#5;
end
endmodule
