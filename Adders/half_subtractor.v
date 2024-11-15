module half_subtractor(a, b, diff, borrow);
    input a, b;
    output reg diff, borrow;
    
    initial begin
        diff = 1'b0;
        borrow = 1'b0;
    end
    
    always @(a or b) begin
        diff = a ^ b;          
        borrow = (~a) & b;     
    end
endmodule
