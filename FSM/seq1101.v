module seq1101(x, clk, y);
input x, clk;
output reg y;
reg[2:0] ns, ps;
parameter reset = 3'b000;
parameter g1 = 3'b001;
parameter g11 = 3'b011;
parameter g110 = 3'b110;
parameter seq = 3'b111;

initial begin
ns=reset;
ps=reset;
y=0;
end

always@(ps,x)
begin
case(ps)
reset:

begin
y<=0;
if(x==1)
ns<=g1;
else ns<=reset;
end


g1:begin
y<=0;
if(x==1) ns<=g11;
else
ns<=reset;
end


g11:begin y<=0;
if(x==0) ns<=g110;
else
ns<=g11;
end


g110:begin y<=0;
if(x==1) ns<=seq;
else
ns<=reset;
end


seq:begin
y=1;
if(x==1)
ns<=g11;
else
ns<=reset;

end
endcase
end

always@(posedge clk)
begin
ps<=ns;
end
endmodule
