module v1_filter(
		input  wire												clk,
		input  wire												reset,
		input wire [SIZE_ADC_DATA-1:0]							input_data,
		output wire [SIZE_FILTER_DATA-1:0]						output_data);
		

reg [SIZE_ADC_DATA+2:0] d0;
reg [SIZE_ADC_DATA+2:0] d1;
reg [SIZE_ADC_DATA+2:0] d2;
reg [SIZE_ADC_DATA+2:0] d3;
reg [SIZE_ADC_DATA+2:0] d4;
reg [SIZE_ADC_DATA+2:0] d5;
reg [SIZE_ADC_DATA+2:0] d6;
reg [SIZE_ADC_DATA+2:0] d7;
reg [SIZE_ADC_DATA+2:0] d8;
reg [SIZE_ADC_DATA+2:0] d9;
reg [SIZE_ADC_DATA+2:0] d10;
reg [SIZE_ADC_DATA+2:0] d11;
reg [SIZE_ADC_DATA+2:0] d12;
reg [SIZE_ADC_DATA+2:0] d13;
reg [SIZE_FILTER_DATA+2:0] p;
reg [SIZE_FILTER_DATA+4:0] r;
reg [SIZE_FILTER_DATA+4:0] s;
reg [SIZE_FILTER_DATA+2:0] d;

always @(posedge clk or negedge reset) begin
	if(!reset) begin
		output_data <= 0;
		d0 <= 0;
		d1 <= 0;
		d2 <= 0;
		d3 <= 0;
		d4 <= 0;
		d5 <= 0;
		d6 <= 0;
		d7 <= 0;
		d8 <= 0;
		d9 <= 0;
		d10 <= 0;
		d11 <= 0;
		d12 <= 0;
		d13 <= 0;
		d <= 0;
		p <= 0;
		r <= 0;
		s <= 0;
	end else begin
		d0 <= input_data;
		d1 <= d0;
		d2 <= d1;
		d3 <= d2;
		d4 <= d3;
		d5 <= d4;
		d6 <= d5;
		d7 <= d6;
		d8 <= d7;
		d9 <= d8;
		d10 <= d9;
		d11 <= d10;
		d12 <= d11;
		d13 <= d12;
		d <= d0 - d5 - d8 + d13;
		p <= p + d;
		r <= $signed(p) + M_1*$signed(d);
		s <= s + r;
		output_data <= s[SIZE_FILTER_DATA+4:6];
	end
end
endmodule
	