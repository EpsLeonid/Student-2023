module zadanie_2 (
  input wire [7:0] A,    // задаем A
  input wire [7:0] B,    // задаем B
  output wire [15:0] C    // задаем C
);

  assign C = A * B;  // производим умножение и выводим сигнал C

endmodule