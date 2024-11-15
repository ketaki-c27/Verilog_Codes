module Test_FS;
  reg a, b, bin;
  wire diff, bout;
  full_sub fs(a, b, bin, diff, bout);
  
initial begin
    a = 0;
    b=0;
    bin=0;
    #20  bin = 1 ;
end

always #10 a=~a;
always #5 b=~b; 

endmodule
