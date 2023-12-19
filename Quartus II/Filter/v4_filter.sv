module v4_filter(
		input  wire												clk,
		input  wire												reset,
		input wire [SIZE_ADC_DATA-1:0]							input_data,
		output wire [SIZE_FILTER_DATA-1:0]						output_data);
		

reg [SIZE_ADC_DATA-1:0] v0;
reg [SIZE_ADC_DATA-1:0] v1;
reg [SIZE_ADC_DATA-1:0] v2;
reg [SIZE_ADC_DATA-1:0] v3;
reg [SIZE_ADC_DATA-1:0] v4;
reg [SIZE_ADC_DATA-1:0] v5;
reg [SIZE_ADC_DATA-1:0] v6;
reg [SIZE_ADC_DATA-1:0] v7;
reg [SIZE_ADC_DATA-1:0] v8;
reg [SIZE_ADC_DATA-1:0] v9;
reg [SIZE_ADC_DATA-1:0] v10;
reg [SIZE_ADC_DATA-1:0] v11;
reg [SIZE_ADC_DATA-1:0] v12;
reg [SIZE_ADC_DATA-1:0] v13;
reg [SIZE_FILTER_DATA+2:0] p;
reg [SIZE_FILTER_DATA+3:0] q;
reg [SIZE_FILTER_DATA+3:0] s;
reg [SIZE_FILTER_DATA+3:0] dk;
reg [SIZE_FILTER_DATA+2:0] d0;
reg [SIZE_FILTER_DATA+2:0] d1;
reg [SIZE_FILTER_DATA+2:0] d2;
reg [SIZE_FILTER_DATA+2:0] d3;
reg [SIZE_FILTER_DATA+2:0] d4;
reg [SIZE_FILTER_DATA+2:0] d5;
reg [SIZE_FILTER_DATA+2:0] d6;
reg [SIZE_FILTER_DATA+2:0] a;

always @(posedge clk or negedge reset) begin
	if(!reset) begin
		output_data <= 0;
		v0 <= 0;
		v1 <= 0;
		v2 <= 0;
		v3 <= 0;
		v4 <= 0;
		v5 <= 0;
		v6 <= 0;
		v7 <= 0;
		v8 <= 0;
		v9 <= 0;
		v10 <= 0;
		v11 <= 0;
		v12 <= 0;
		v13 <= 0;
		d0 <= 0;
		d1 <= 0;
		d2 <= 0;
		d3 <= 0;
		d4 <= 0;
		d5 <= 0;
		d6 <= 0;
		dk <= 0;
		p <= 0;
		q <= 0;
		s <= 0;
	end else begin
		v0 <= input_data;
		v1 <= v0;
		v2 <= v1;
		v3 <= v2;
		v4 <= v3;
		v5 <= v4;
		v6 <= v5;
		v7 <= v6;
		v8 <= v7;
		v9 <= v8;
		v10 <= v9;
		v11 <= v10;
		v12 <= v11;
		v13 <= v12;
		d0 <= v0 - v1;
		d1 <= d0;
		d2 <= d1;
		d3 <= d2;
		d4 <= d3;
		d5 <= d4;
		d6 <= d5;
		dk <= v0 - v13;
		p <= dk - 13*d6;
		q <= $signed(q) + $signed(p);
		a <= 16*p;
		s <= $signed(s) + $signed(q) + $signed(a);
		output_data <= s[SIZE_FILTER_DATA+3:5];
	end
end
endmodule
	