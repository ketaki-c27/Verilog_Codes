module functions(num,result);
input [2:0]num;
//input clk;
output [12:0] result;

function [12:0] fact;
input [2:0] num;
integer i;
begin
fact=1;
for(i=1;i<=num;i=i+1)
fact=fact*i;
end
endfunction

//always @(posedge clk)begin
assign result=fact(num);
//end 

endmodule

