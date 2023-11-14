module signals
(
	//inputs
	input wire [7:0] E,
	input wire [7:0] D,
	//outputs
	output wire [15:0] F);
assign F = E*D;
endmodule
