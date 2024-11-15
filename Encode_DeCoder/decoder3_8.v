module decoder3_8(s,y);
input [2:0]s;
output wire [7:0]y;
wire s1;

assign s1=~(s[2]);
decoder2_4 d1(s[1:0],s1,y[3:0]);
decoder2_4 d2(s[1:0],s[2],y[7:4]);

endmodule

