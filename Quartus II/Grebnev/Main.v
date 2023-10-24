module Main(A,B,C,d,clk,out,DATA_OUT);

input wire [7:0] A;
input wire [7:0] B;
input d;
input clk;
output wire [15:0] C;
output out;
output reg [16:0] DATA_OUT;

signals(A,B,C);
D_trigger(d,clk,out);
reg8(A,B,C,clk,DATA_OUT);

endmodule