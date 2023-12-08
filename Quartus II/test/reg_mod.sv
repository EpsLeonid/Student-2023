module reg_mod (clk, reset, data, x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10);
    input clk, reset;
    input [SIZE_FILTER_DATA+2:0] data;
    output wire [SIZE_FILTER_DATA+2:0] x0;
	 output wire [SIZE_FILTER_DATA+2:0] x1;
	 output wire [SIZE_FILTER_DATA+2:0] x2;
	 output wire [SIZE_FILTER_DATA+2:0] x3;
	 output wire [SIZE_FILTER_DATA+2:0] x4;
	 output wire [SIZE_FILTER_DATA+2:0] x5;
	 output wire [SIZE_FILTER_DATA+2:0] x6;
	 output wire [SIZE_FILTER_DATA+2:0] x7;
	 output wire [SIZE_FILTER_DATA+2:0] x8;
	 output wire [SIZE_FILTER_DATA+2:0] x9;
	 output wire [SIZE_FILTER_DATA+2:0] x10;
	 
    always @ (posedge clk or negedge reset) begin
		if (!reset) begin
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
		end
      else begin
			x0 <= data;
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
		end
	end
	endmodule