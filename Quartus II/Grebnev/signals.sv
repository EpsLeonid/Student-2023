module signals
(
	//inputs
	input wire [0:7] A,
	input wire [0:7] B,
	//outputs
	output wire [7:0] C,
);
assign C = A*B;
endmodule