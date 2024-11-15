module test_comp;
reg a,b;
wire [2:0]g;

comp_1B c(a,b,g);
initial begin
a=0; b=0;
#2 b=1;
#2 a=1; b=0;
#2 b=1;
#2;
end

endmodule
