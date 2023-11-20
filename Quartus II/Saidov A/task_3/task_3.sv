module task_3(
//задаем входные/выходные данные
input logic d,
input logic clk,
output logic out
);
//делаем так, чтобы на положительном фронте сигнала clk сигнал out становился равным сигналу d
always @(posedge clk) begin
out <= d;
end

endmodule