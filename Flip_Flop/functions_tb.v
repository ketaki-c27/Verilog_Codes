module functions_tb;
reg [2:0] num;
//reg clk;
wire [12:0] result;
integer i;

functions f1(num,result);

initial begin
num=0;

for(i=0;i<8;i=i+1) begin
num=i;
$monitor("At time=%5t num=%2d factorial=%5d  i=%3d",$time , num, result,i);
#10;
end
end

//always #2 clk=~clk;

endmodule
