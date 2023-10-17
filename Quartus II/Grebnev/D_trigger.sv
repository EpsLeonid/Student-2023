module D_trigger (d,clk,out);
input d;
input clk;
output out;
always @(posedge clk)
begin
	out <= d;
end
endmodule