module task_4(
input logic clk, // Тактовый вход на 200 МГц
input logic [7:0] A, // 8-разрядный вход А
input logic [7:0] B, // 8-разрядный вход B
input logic [7:0] C, // 8-разрядный вход C
output logic [7:0] DATA_OUT // 8-разрядный выход
);

// Регистр для хранения промежуточных и конечных значений
logic [7:0] result;

always_ff @(posedge clk) begin

result <= A * B + C;  
DATA_OUT <= result;
end

endmodule