module test_2TO1;
reg i0,i1,s;
wire y;

mux2 m(i0,i1,s,y);

initial begin
i0=0;
i1=0;
s=0;
#20 s=1;
end 

always #5 i0=~i0;
always #10 i1=~i1;

endmodule
