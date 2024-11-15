module T_FF(clk,t,r,q);
input clk,t,r;
output q;

SyncJK t1(clk,t,t,r,q);
endmodule
