module tasks_tb;
parameter n=4;
reg [n-1:0]x,y;
//reg[1:0] op;
wire [n*2-1:0] result;

tasks #n t1(x,y,result);

initial begin
y=4'b1010;
x=4'b1100;
//op=2'b00;
//$monitor("At time=%4t x=%3d y=%3d sum=%5d ",$time,x,y,result);
//#4  op=2'b01;
//$monitor("At time=%4t x=%3d y=%3d difference=%5d ",$time,x,y,result);
//#4  //x=30;
//op=2'b10;
$monitor("At time=%4t x=%3d y=%3d product=%5d ",$time,x,y,result);

end

endmodule


