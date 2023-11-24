import zadanie_5::*;
module zadanie_4(
input logic clk, // clk 200 МГц
input wire [SIZE_A-1:0] A, // входной сигнал шириной SIZE_A
input wire [SIZE_B-1:0] B, // входной сигнал шириной SIZE_B
input wire [SIZE_C-1:0] C, // входной сигнал шириной SIZE_C
output wire [SIZE_DATA_OUT-1:0] DATA_OUT // выходной сигнал шириной SIZE_DATA_OUT
);

wire [15:0] D; //задаем новую шину для промежуточных вычислений внутри модуля

always@(!clk) begin
	D[15:0] = A[7:0] * B[7:0] + C[7:0]; //поскольку вычисления занимают некоторое время, проводим их отдельно, а только потом записываем в выходную шину
end
// на каждом положительном фронте clk производим алгебраические вычисления и присваиваем получившееся значение сигналу выхода DATA_OUT

always@(clk) begin
	DATA_OUT[15:0] <= D[15:0];  
end

endmodule