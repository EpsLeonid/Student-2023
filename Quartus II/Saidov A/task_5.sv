module task_5 #(
parameter DATA_WIDTH = 8 // Параметр разрядности шин данных
)(
input wire [DATA_WIDTH-1:0] A, // Вход A с параметризованной разрядностью
input wire [DATA_WIDTH-1:0] B, // Вход B с параметризованной разрядностью
input wire [DATA_WIDTH-1:0] C, // Вход C с параметризованной разрядностью
input wire clk, // Вход тактового сигнала
output reg [DATA_WIDTH-1:0] DATA_OUT // Выход данных с параметризованной разрядностью
);

always @(posedge clk) begin
DATA_OUT <= (A * B) + C; // Выполняем операцию при положительном фронте тактового сигнала
end

endmodule