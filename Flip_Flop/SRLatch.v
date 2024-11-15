module SRLatch(s,r,q,qb);
input s,r;
output wire q,qb;

//nand n1(q,s,qb);
//nand n2(qb,r,q);

nor n1(q,r,qb);
nor n2(qb,s,q);

endmodule
