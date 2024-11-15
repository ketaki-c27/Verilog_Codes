module test_encoder3_8;
reg [7:0]a;
wire [2:0]y;
encoder8_3 e(a,y);

integer k;

initial begin
a = 8'b00000000;
    #2 a = 8'b00000001;
    #2 a = 8'b00000010;
    #2 a = 8'b00000100;
    #2 a = 8'b00001000;
    #2 a = 8'b00010000;
    #2 a = 8'b00100000;
    #2 a = 8'b01000000;
    #2 a = 8'b10000000;
    #2 a = 8'b00010001;
    #2 a = 8'b00101010;
    #2 a = 8'b11100000;
    #2 a = 8'b01111111;
    #2 a = 8'b00000000;
    #2 ;
end
endmodule
 