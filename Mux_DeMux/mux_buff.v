module mux_buff(input i0, i1 , s, output z);

tri_state_buff i0b(i0,s,z);
tri_state_Nbuff i1b(i1,s,z);
endmodule
