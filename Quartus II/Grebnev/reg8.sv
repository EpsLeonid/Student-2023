module reg8 (
	//inputs
	input wire [0:7] A;
	input wire [0:7] B;
	input wire [0:7] C;
	//outputs
	output [7:0] DATA_OUT;
	reg [7:0] DATA_OUT;
);
always @(posedge clk)
	begin
		DATA_OUT[7:0] <= A[7:0]*B[7:0]+C[7:0];
	end
endmodele