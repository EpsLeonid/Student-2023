import task_5::*;
module task_4(
input logic clk, // входная частота 200 МГц
input wire [SIZE_A-1:0] A, // присваиваем сигналу А размер 8-битной шины из файла параметров
input wire [SIZE_B-1:0] B, // присваиваем сигналу B размер 8-битной шины из файла параметров
input wire [SIZE_C-1:0] C, // присваиваем сигналу C размер 8-битной шины из файла параметров
output wire [SIZE_DATA_OUT-1:0] DATA_OUT // присваиваем сигналу DATA_OUT размер 16-битной шины из файла параметров
);

wire [15:0] DATA0;

always@(!clk) begin
	DATA0[15:0] = A[7:0] * B[7:0] + C[7:0]; 
end

always@(clk) begin
	DATA_OUT[15:0] <= DATA0[15:0];  
end

endmodule