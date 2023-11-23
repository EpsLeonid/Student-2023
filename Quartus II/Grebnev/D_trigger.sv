module D_trigger(
	input d,
	input clk,
	output reg out );
always @(posedge clk)
	begin
		out <= d;
	end
endmodule