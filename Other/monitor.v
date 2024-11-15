`timescale 1ns/1ps
module monitor;
  parameter N = 8;
  reg clk, rst;
  wire [N-1:0] q;
  integer i,t;
  
  // Instantiate the Q2 module
  Q2 #(.N(N)) i1 (.clk(clk), .rst(rst), .q(q));

  initial begin
    clk = 0;
    //rst = 0;
    t=0;
    
    // Initial reset sequence
    rst = 1;
    #1 rst = 0;
    
    // Loop to display values of q over time
    for (i = 0; i < 20; i = i + 1) begin
    t=t+4;
      
      $monitor("At time = %5t, rst = %b, q = %2b , i=%2d , t=%2d ", $time, rst, q, i, t);
      if(t>70)
      $stop;
      
      #t;  
      
    end
    
    // End simulation after the loop
    #20 $finish;
  end

  // Generate a clock with a period of 4 time units (50% duty cycle)
  always #2 clk = ~clk;
endmodule
