module zadanie_3 (
  input wire d,    // задаем d
  input wire clk,  // задаем clk
  output reg out   // задаем out
);

  always @(posedge clk) begin
    out <= d;  // присваиваем сигналу выхода out значение сигнала d на каждом положительном фронте сигнала клока
  end

endmodule