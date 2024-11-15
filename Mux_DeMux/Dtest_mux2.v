module Dtest_mux2;
reg i,s;
wire y0,y1;
mux2_1 m(i,s,y0,y1);

initial begin
//i=0;
//s=0;
//#4 s=~s; 
//end
//always #2 i=~i; 

i=1'b0;  s=1'b0;
#2 i=1'b1;  
#2 i=1'b0;  s=1'b1;
#2 i=1'b1; 
#2;
end
endmodule
 