module test_4TO1;

  reg [3:0] i;
  reg [1:0]s;
  wire y;
 
  mux4 m(i,s,y);
integer k,j;

initial begin
i=0;
s=0;
	for(k=0;k<4;k=k+1)
	begin
		for(j=0;j<16;j=j+1)
		begin
		i=i+1;
		#5;
		end
		s=s+1;
   end
end
endmodule