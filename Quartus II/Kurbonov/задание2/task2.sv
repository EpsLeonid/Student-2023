module task2(
	input d,// задаем данные d,clk,out.
	input clk,
	output reg out );
always @(posedge clk)
	begin
		out <= d;// присваиваем сигналу выхода out значение сигнала d на каждом положительном фронте сигнала clk
	end
endmodule 