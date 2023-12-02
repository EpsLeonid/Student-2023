module reg_mod_2 (clk, reset, data, x0, x1);
    input clk, reset;
    input [13:0] data; // 14-bit signal
    output reg [13:0] x0;
	 output reg [13:0] x1;
	 
always @ (posedge clk or negedge reset)
    begin
		if (!reset) begin
			x0 <= 0;
			x1 <= 0;
		end
      else begin
			x0 <= data;
			x1 <= x0;
		end
	end
endmodule