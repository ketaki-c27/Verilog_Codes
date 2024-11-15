module comp_1B(a,b,g);
input a,b;
output reg[2:0]g;
//wire a_bar,b_bar;
//
//not n1(a_bar,a);
//not n2(b_bar,b);
//
//and a1(g,b_bar,a);
//and a2(l,a_bar,b);
//xnor x1(e,a,b);

always@(*) begin
g[0]=(~a)&b;
g[1]=~(a^b);
g[2]=a&(~b);
end

endmodule
