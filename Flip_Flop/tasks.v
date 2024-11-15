module tasks(x,y,result);
parameter n=4;
input [n-1:0] x,y;
//input [1:0] op;
output reg [n*2-1:0] result;

task add;
input [n-1:0] a,b;
output reg [n*2-1:0] c;
begin 
c=a+b;
end
endtask

//task sub;
//input [n-1:0] x,y;
//output reg [n*2-1:0] result;
//begin 
//result = x-y;
//end
//endtask

task product;
input [n-1:0] x,y;
output reg [n*2-1:0] result;
integer i;
reg [n*2-1:0] j;

begin 
j=0;
for(i=0;i<y;i=i+1) begin
add(x,j,j);
end
result=j;
end
endtask

//always@(*) begin
//case (op )
//2'b00:
//add(x,y,result);

//2'b01:
//sub(x,y,result);

//2'b10 :
initial begin
product(x,y,result);
//endcase
end

endmodule
