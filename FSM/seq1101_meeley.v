module seq1101_meeley(x, clk, y);
input x, clk;
output reg y;
reg[2:0] ns, ps;
parameter reset = 3'b000;
parameter g1 = 3'b001;
parameter g11 = 3'b011;
parameter g110 = 3'b110;
parameter seq = 3'b111;

initial begin
ns=reset;
ps=reset;
y=0;
end

always@(ps,x)
begin
	case(ps)

		reset:begin
			if(x==1) begin
				y<=0;
				ns<=g1;
			end
			
			else begin
				y<=0;
				ns<=reset;
			end
		end


		g1:begin
			if(x==1) begin
				y<=0;
				ns<=g11;
			end

			else begin
				y<=0;
				ns<=reset;
			end
		end


		g11:begin 
			if(x==0) begin
				y<=0; 
				ns<=g110;
			end

			else begin
				y<=0;
				ns<=g11;
			end
		end


		g110:begin 
			if(x==1) begin
				y<=0;
				ns<=seq;
			end

			else begin
				y<=0;
				ns<=reset;
			end
		end


		seq:begin
			if(x==1) begin
				y<=1;
				ns<=g11;
			end
			
			else begin
				y<=1;
				ns<=reset;

			end
		end
	endcase
end

always@(posedge clk)
begin
ps<=ns;
end
endmodule
