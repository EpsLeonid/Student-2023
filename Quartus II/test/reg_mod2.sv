module reg_mod2 (clk, reset, data1, y0, y1);
   input clk, reset;
   input [SIZE_FILTER_DATA+2:0] data1;
   output wire [SIZE_FILTER_DATA+2:0] y0;
	output wire [SIZE_FILTER_DATA+2:0] y1;
	
   always @ (posedge clk or negedge reset) begin
		if (!reset) begin
			y0 <= 0;
			y1 <= 0;
		end
		else begin
			y0 <= data1;
			y1 <= y0;
		end
	end
	endmodule