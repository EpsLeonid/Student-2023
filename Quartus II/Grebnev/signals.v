module signals
(
	//inputs
	input wire [7:0] A,
	input wire [7:0] B,
	//outputs
	output wire [15:0] C);
assign C = A*B;
endmodule
