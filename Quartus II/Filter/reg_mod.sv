module reg_mod (clk, reset, data, x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
    input clk, reset;
    input [13:0] data; // 14-bit signal
    output reg [13:0] x0;
	 output reg [13:0] x1;
	 output reg [13:0] x2;
	 output reg [13:0] x3;
	 output reg [13:0] x4;
	 output reg [13:0] x5;
	 output reg [13:0] x6;
	 output reg [13:0] x7;
	 output reg [13:0] x8;
	 output reg [13:0] x9;

    always @ (posedge clk or negedge reset)
    begin
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
		end
	end
endmodule