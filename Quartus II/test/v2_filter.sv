import package_settings_v2::*;
module v2_filter(
		input  wire												clk,
		input  wire												reset,
		input wire [SIZE_ADC_DATA-1:0]							input_data,
		output wire [SIZE_FILTER_DATA+2:0]						output_data,
		output reg [SIZE_FILTER_DATA+2:0] x0,
		output reg [SIZE_FILTER_DATA+2:0] x5,
		output reg [SIZE_FILTER_DATA+2:0] x10);
		

reg [SIZE_FILTER_DATA+2:0] x1;
reg [SIZE_FILTER_DATA+2:0] x2;
reg [SIZE_FILTER_DATA+2:0] x3;
reg [SIZE_FILTER_DATA+2:0] x4;
reg [SIZE_FILTER_DATA+2:0] x6;
reg [SIZE_FILTER_DATA+2:0] x7;
reg [SIZE_FILTER_DATA+2:0] x8;
reg [SIZE_FILTER_DATA+2:0] x9;
reg [SIZE_FILTER_DATA+2:0] d;
reg [SIZE_FILTER_DATA+2:0] p;
reg [SIZE_FILTER_DATA+2:0] s;
		
integer M_2;

always @(posedge clk or negedge reset) begin
	if(!reset) begin
		output_data <= 0;
		x0 <= 0;
		x1 <= 0;
		x2 <= 0;
		x3 <= 0;
		x4 <= 0;
		x5 <= 0;
		x6 <= 0;
		x7 <= 0;
		x8 <= 0;
		x9 <= 0;
		x10 <= 0;
		d <= 0;
		p <= 0;
		s <= 0;
	end else begin
		x0 <= input_data;
		x1 <= x0;
		x2 <= x1;
		x3 <= x2;
		x4 <= x3;
		x5 <= x4;
		x6 <= x5;
		x7 <= x6;
		x8 <= x7;
		x9 <= x8;
		x10 <= x9;
		d <= x0 - 2*x5 + x10;
		p <= p + d;
		s <= s + p + M_2*d;
		output_data <= s;
	end
end
endmodule
	