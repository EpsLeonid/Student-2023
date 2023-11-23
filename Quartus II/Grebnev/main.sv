import package_settings::*;
module main(A,B,C,D,E,F,d,clk,out,DATA_OUT);

	input wire [7:0] D;
	input wire [7:0] E;
	input d;
	input clk;
	output wire [15:0] F;
	output out;
	input wire [SIZE_A-1:0] A;
	input wire [SIZE_B-1:0] B;
	input wire [SIZE_C-1:0] C;
	output reg [SIZE_DATA_OUT-1:0] DATA_OUT;

signals(D,E,F);
D_trigger(d,clk,out);
reg8(A,B,C,clk,DATA_OUT);

endmodule