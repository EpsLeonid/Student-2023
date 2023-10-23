module reg8 (
	//inputs
	input wire [7:0] A,
	input wire [7:0] B,
	input wire [7:0] C,
	//outputs
	output reg [7:0] DATA_OUT,
);
always @(posedge clk)
	begin
		DATA_OUT[7:0] <= A[7:0]*B[7:0]+C[7:0];
	end
endmodele