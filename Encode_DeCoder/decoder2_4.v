module decoder2_4(a,e,y);
input[1:0] a;
input e;
output reg [3:0]y;

always@(*) begin
if(e==1) begin
y=0;
end
else begin
y=0;
case(a)
2'b00: y[0]=1;
2'b01: y[1]=1;
2'b10: y[2]=1;
2'b11: y[3]=1;
endcase
end
end
endmodule
