module task2(
	input d,// ������ ������ d,clk,out.
	input clk,
	output reg out );
always @(posedge clk)
	begin
		out <= d;// ����������� ������� ������ out �������� ������� d �� ������ ������������� ������ ������� clk
	end
endmodule 