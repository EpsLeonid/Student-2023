module task1(

//задаем входные данные
input logic [7:0] A,
input logic [7:0] B,
output logic [15:0] C
);
 assign C = A * B;  // производим умножение и выводим сигнал C// производим умножение и выводим сигнал C

endmodule