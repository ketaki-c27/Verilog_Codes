module tester_Code;
  reg clk, rst;
  wire [7:0] q;
  
  // Instantiate the module under test (MUT)
  Q2 i1(.clk(clk), .rst(rst), .q(q));

  initial begin
    clk = 0;
    rst = 0;
    
    #10 rst = 1;   // Assert reset
    #14 rst = 0;   // Deassert reset
    #100 rst = 1;  // Assert reset again
//    #10 rst = 0;   // Deassert reset
//    #50 $finish;   // End the simulation after a set time
  end

  // Generate clock with a period of 4 time units (50% duty cycle)
  always #2 clk = ~clk;
endmodule
