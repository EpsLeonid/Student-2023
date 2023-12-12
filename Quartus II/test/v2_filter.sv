import package_settings_v2::*;
module v2_filter(
		input  wire												clk,
		input  wire												reset,
		input wire [SIZE_ADC_DATA-1:0]							input_data,
		output wire [SIZE_FILTER_DATA+2:0]						output_data,
		output wire [SIZE_FILTER_DATA+2:0] x0,
		output wire [SIZE_FILTER_DATA+2:0] x5,
		output wire [SIZE_FILTER_DATA+2:0] x10,
		output wire [SIZE_FILTER_DATA+2:0] s,
		output wire [SIZE_FILTER_DATA+2:0] p,
		output wire [SIZE_FILTER_DATA+2:0] y1);
		
wire [SIZE_FILTER_DATA+2:0] s1;
wire [SIZE_FILTER_DATA+2:0] s2;
wire [SIZE_FILTER_DATA+2:0] s3;
wire [SIZE_FILTER_DATA+2:0] p1;
wire [SIZE_FILTER_DATA+2:0] p2;
wire [SIZE_FILTER_DATA+2:0] y0;
wire [SIZE_FILTER_DATA+2:0] y2;
wire [SIZE_FILTER_DATA+2:0] y3;
integer M_2;

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

always @(posedge clk or negedge reset) begin
	if(!reset) begin
		output_data <= 0;
		s <= 0;
		p <= 0;
	end else begin
		y0 <= 2*x5;
		y1 <= (16+1)*x0;
		y2 <= 2*(16+1)*x5;
		y3 <= (16+1)*x10;
		p1 <= p + x0; // - 1'd2*x5 + x10;
		p2 <= p1 + y0;
		p <= p2 + x10;
		s1 <= p + s; // + (2'd16+1'd1)*x0 - 1'd2*(2'd16+1'd1)*x5 + (2'd16+1'd1)*x10;
		s2 <= s1 + y1;
		s3 <= s2 - y2;
		s <= s3 + y3;
		output_data <= s;
	end
end
endmodule
	