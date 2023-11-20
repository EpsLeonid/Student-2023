module task_2(

//задаем входные данные
input logic [7:0] A,
input logic [7:0] B,

//задаем выходные данные
output logic [15:0] C

);

// создаем внутреннюю шину, равную 
logic [15:0] result;

//перемножаем сигналы ""всегда"
always_comb begin

result = A * B;

end
//присваиваем сигналу C значение внутренней шины result
assign C = result;

endmodule