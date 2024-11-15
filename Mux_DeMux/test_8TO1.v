module test_8TO1;

  reg [7:0] i;
  reg [2:0] s;
  wire y;

  mux8 m(i, s, y);
  integer k, j;

   initial begin
    i = 0;
    s = 0;
//    for (k = 0; k < 256; k = k + 1) begin
//      i = i + 1;
	i=8'b00000010;
      for (j = 0; j < 8; j = j + 1) begin
        #10;
        s = s + 1;
      end
//    end

  end

endmodule
