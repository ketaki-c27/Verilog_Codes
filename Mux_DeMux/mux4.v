module mux4(i,s,y);
input [3:0]i;
input [1:0]s;
output y;
wire w1,w2;

mux2 m1(i[0],i[1],s[0],w1);
mux2 m2(i[2],i[3],s[0],w2);
mux2 m3(w1,w2,s[1],y);
endmodule

//module mux4 (i0, i1, i2, i3, s, y);
//input i0,i1,i2,i3;
//input [1:0] s;
//output reg y;
//
//always@(*)
//begin
//
//case (s)
//2'b00 : y=i0;
//2'b01 : y=i1;
//2'b10 : y=i2;
//default : y=i3;
//endcase
//end
//endmodule