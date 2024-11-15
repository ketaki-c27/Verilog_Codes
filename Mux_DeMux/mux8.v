module mux8(i, s, y);
  input [7:0] i;
  input [2:0] s;
  output y;
  wire w1, w2;

  mux4 m1(i[3:0], s[1:0], w1);
  mux4 m2(i[7:4], s[1:0], w2);
  mux2 m3(w1, w2, s[2], y);
endmodule

