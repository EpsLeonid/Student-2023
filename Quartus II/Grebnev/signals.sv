module signals
(
	//inputs
	input wire [7:0] D,
	input wire [7:0] E,
	//outputs
	output wire [15:0] F);
assign F[15:0] = D[7:0] * E[7:0];
endmodule
