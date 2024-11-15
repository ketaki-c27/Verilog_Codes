module tri_state_buff(input a, input c, output y);

assign y= c? a : 1'bz;
endmodule

module tri_state_Nbuff(input a, input c, output y);

assign y= c? 1'bz : a;
endmodule

