module Q2(clk, rst, q);
  parameter N = 8;
  input clk, rst;
  output reg [N-1:0] q;

  always @(posedge clk or posedge rst)
  begin
    if (rst)
      q <= 8'b00000000;
    else
      q <= q + 1;
  end
endmodule
