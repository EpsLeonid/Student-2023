module reg8 (
	//inputs
	input wire [7:0] A,
	input wire [7:0] B,
	input wire [15:0] C,
	input clk,
	//outputs
	output reg [16:0] DATA_OUT );
always @(posedge clk)
	begin
		DATA_OUT[16:0] <= A[7:0]*B[7:0]+C[15:0];
	end
endmodule