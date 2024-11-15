module test_4B;

  reg [3:0] a,b;
  wire g,l,e;
 
  comp_4B c(a,b,g,l,e);
integer k,j;

initial 
begin
	a=0;
	b=0;
	for(k=0;k<16;k=k+1)
	begin
		a=a+1;
		for(j=0;j<16;j=j+1)
		begin
			b=b+1;
			#5;
		end
	end
end
endmodule
