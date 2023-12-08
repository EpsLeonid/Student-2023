import package_settings_v2::*;
module v2_filter(
		input  wire												clk,
		input  wire												reset,
		input wire [SIZE_ADC_DATA-1:0]							input_data,
		output wire [SIZE_FILTER_DATA+2:0]						output_data,
		output wire [SIZE_FILTER_DATA+2:0] j,
		output wire [SIZE_FILTER_DATA+2:0] x0,
		output wire [SIZE_FILTER_DATA+2:0] x5,
		output wire [SIZE_FILTER_DATA+2:0] x10,
		output wire [SIZE_FILTER_DATA+2:0] s1,
		output wire [SIZE_FILTER_DATA+2:0] p1);

integer M_2;
integer k_2;

wire [SIZE_FILTER_DATA+2:0] s;
wire [SIZE_FILTER_DATA+2:0] p;
wire [SIZE_FILTER_DATA+2:0] ss;
wire [SIZE_FILTER_DATA+2:0] pp;

assign ss = s;
assign pp = p;

initial begin
	j = 0;
end

reg_mod reg1(
.clk				(clk),
.reset			(reset),
.data				(input_data),

.x0				(x0),
.x1				(x1),
.x2				(x2),
.x3				(x3),
.x4				(x4),
.x5				(x5),
.x6				(x6),
.x7				(x7),
.x8				(x8),
.x9				(x9),
.x10				(x10));

reg_mod2 reg2(
.clk			(clk),
.reset		(reset),
.data1		(ss),
.y0			(s0),
.y1			(s1));

reg_mod2 reg3(
.clk			(clk),
.reset		(reset),
.data1		(pp),
.y0			(p0),
.y1			(p1));

always @(posedge clk or negedge reset) begin
	if(!reset) begin
		output_data <= 0;
		s <= 0;
		p <= 0;
	end else begin
		if (input_data) begin
			j = j + 1;
			if (j == 1) begin
				s <= (16+1)*x0;
				p <= x0;
				output_data <= (16+1)*x0;
			end else begin
				if (j > 6) begin
					if (j > 11) begin
						p <= p0 + x0 - 2*x5 + x10;
						s <= s0 + p0 + (M_2+1)*(x0 - 2*x5 + x10);
						output_data <= s0 + p0 + (M_2+1)*(x0 - 2*x5 + x10);
					end else begin
						p <= p0 + x0 - 2*x5;
						s <= s0 + p0 + 17*x0 - 34*x5;
						output_data <= s0 + p0 + (16+1)*(x0 - 2*x5);
					end
				end else begin
					p = p0 + x0;
					s = s0 + p0 + (16+1)*x0;
					output_data <= s0 + p0 + (16+1)*x0;
				end
			end
		end
	end
end
endmodule
	