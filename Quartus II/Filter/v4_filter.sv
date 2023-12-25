module v4_filter(
		input  wire												clk,
		input  wire												reset,
		input wire [SIZE_ADC_DATA-1:0]							input_data,
		output wire [SIZE_FILTER_DATA-1:0]						output_data);

reg [SIZE_FILTER_DATA+2:0] x0;
reg [SIZE_FILTER_DATA+2:0] x1;
reg [SIZE_FILTER_DATA+2:0] x2;
reg [SIZE_FILTER_DATA+2:0] x3;
reg [SIZE_FILTER_DATA+2:0] x4;
reg [SIZE_FILTER_DATA+2:0] x5;
reg [SIZE_FILTER_DATA+2:0] x6;
reg [SIZE_FILTER_DATA+2:0] x7;
reg [SIZE_FILTER_DATA+2:0] x8;
reg [SIZE_FILTER_DATA+2:0] x9;
reg [SIZE_FILTER_DATA+2:0] x10;
reg [SIZE_FILTER_DATA+2:0] x11;
reg [SIZE_FILTER_DATA+2:0] x12;
reg [SIZE_FILTER_DATA+2:0] x13;
reg [SIZE_FILTER_DATA+2:0] x14;
reg [SIZE_FILTER_DATA+2:0] d;
reg [SIZE_FILTER_DATA+2:0] p;
reg [SIZE_FILTER_DATA+3:0] r;
reg [SIZE_FILTER_DATA+3:0] s;
reg [SIZE_FILTER_DATA+3:0] s1;


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
		x11 <= 0;
		x12 <= 0;
		x13 <= 0;
		x14 <= 0;
		d <= 0;
		p <= 0;
		r <= 0;
		s <= 0;
		s1 <= 0;
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
		x11 <= x10;
		x12 <= x11;
		x13 <= x12;
		x14 <= x13;
		d <= x0 - x5 - x9 + x14;
		p <= $signed(p) + $signed(d);
		r <= $signed(p) + M_4*$signed(d);
		s <= $signed(s) + $signed(r);
		s1 <= s;
		output_data <= s1[SIZE_FILTER_DATA+3:5];
	end
end
endmodule
	