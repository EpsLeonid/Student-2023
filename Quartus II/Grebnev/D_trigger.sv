module D_trigger (
input d,
input clk,
output out
);
always @(posedge clk)
	begin
		out <= d;
	end
endmodule