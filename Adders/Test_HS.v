module Test_HS;
    reg a, b;
    wire diff, borrow;

    half_subtractor hs1(a, b, diff, borrow);

    initial begin
        a = 1'b0; b = 1'b0;
        #5

        a = 1'b0; b = 1'b1;
        #5

        a = 1'b1; b = 1'b0;
        #5

        a = 1'b1; b = 1'b1;
        #5;
    end
endmodule
