import package_settings::*;
module reg8 (
	input wire [SIZE_A-1:0] A,
	input wire [SIZE_B-1:0] B,
	input wire [SIZE_C-1:0] C,
	input clk,
	//outputs
	output reg [SIZE_DATA_OUT-1:0] DATA_OUT );
always @(posedge clk)
	begin
		DATA_OUT[15:0] <= A[7:0]*B[7:0]+C[7:0];
	end
endmodule