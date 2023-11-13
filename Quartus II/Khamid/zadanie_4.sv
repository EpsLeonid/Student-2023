module zadanie_4 (
  input wire [7:0] A,    // Вход A
  input wire [7:0] B,    // Вход B
  input wire [7:0] C,    // Вход C
  input wire clk,        // Вход тактового сигнала
  output reg [7:0] DATA_OUT  // Выход данных
);

  always @(posedge clk) begin
    DATA_OUT <= (A * B) + C;  // Выполняем операцию при положительном фронте тактового сигнала
  end

endmodule