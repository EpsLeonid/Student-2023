import package_settings_v2::*;
module v2_filter(
		input  wire												clk,
		input  wire												reset,
		input wire [SIZE_ADC_DATA-1:0]							input_data,
		output wire [SIZE_ADC_DATA-1:0]						output_data);
reg [SIZE_ADC_DATA-1:0] d;
reg [SIZE_ADC_DATA-1:0] p;
reg [SIZE_ADC_DATA-1:0] s;
reg [SIZE_ADC_DATA-1:0] r;
reg [SIZE_ADC_DATA-1:0] p0;
reg [SIZE_ADC_DATA-1:0] r0;
reg [SIZE_ADC_DATA-1:0] s0;
reg [SIZE_ADC_DATA-1:0] p1;
reg [SIZE_ADC_DATA-1:0] r1;
reg [SIZE_ADC_DATA-1:0] s1; 
integer n;
assign n = SIZE_ADC_DATA - 1;
integer M_2;
integer l_2;
integer k_2;
integer i;
integer j;
reg_mod registr_DATA(
.clk					(clk),
.reset 				(reset),
.data					(input_data),
.x0					(x0),
.x1 					(x1),
.x2 					(x2),
.x3					(x3),
.x4 					(x4),
.x5 					(x5),
.x6					(x6),
.x7 					(x7),
.x8 					(x8),
.x9 					(x9));

reg_mod_2 registr_P (
.clk					(clk),
.reset 				(reset),
.data					(p),
.x0					(p0),
.x1					(p1));

reg_mod_2 registr_S (
.clk					(clk),
.reset 				(reset),
.data					(s),
.x0					(s0),
.x1					(s1));

reg_mod_2 registr_R (
.clk					(clk),
.reset 				(reset),
.data					(r),
.x0					(r0),
.x1					(r1));

always @(posedge clk or negedge reset) begin
	if(!reset) begin
		output_data <= 0;
	end
	else begin
		i = 0;
		while (i < 220) begin
			d <= x9;
			if (i-k_2 >= 0) begin
				d <= d - x4; // вычитаем из d(i) значение v(i-k), если i-k >= 1
			end
			if (i-l_2 >= 0) begin
				d <= d - x4; // вычитаем из d(i) значение v(i-L), если i-L >= 1
			end
			if (i-l_2-k_2 >= 0) begin
				d <= d + x0; // прибавляем к d(i) значение v(i-L-k), если i-L-k >= 1
			end
			if (i == 0) begin
				p <= d;
				r <= p + M_2*d;
				s <= r;
			end
			j = 1;
			while (j < 220) begin
				p <= p1 + d;
				r <= p0 + M_2*d;
				s <= s1 + r0;
				j = j + 1;
			end
			output_data <= s0;
			i = i+1;
		end 
	end
end
endmodule
	