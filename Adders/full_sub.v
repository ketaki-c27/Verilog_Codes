module full_sub(a, b, bin, diff, bout);
    input a, b, bin;
    output diff, bout;

    wire d1, b1, b2;

    half_subtractor hs1(a, b, d1, b1);
    half_subtractor hs2(d1, bin, diff, b2);
    assign bout = b1 | b2;
endmodule
