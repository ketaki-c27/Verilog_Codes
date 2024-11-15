module test_half_adder;
  reg a, b, Bin;
  wire D, Bout;
  
  full_subtractor fs(a, b, Bin, D, Bout);
  
initial begin
  
    a = 0; b = 0; Bin = 0; #5
    a = 0; b = 0; Bin = 1; #5
    a = 0; b = 1; Bin = 0; #5
    a = 0; b = 1; Bin = 1; #5
    a = 1; b = 0; Bin = 0; #5
    a = 1; b = 0; Bin = 1; #5
    a = 1; b = 1; Bin = 0; #5
    a = 1; b = 1; Bin = 1; #5;
  end
endmodule