import task4::*;
module task3(
input logic clk, 
input wire [SIZE_A-1:0] A, 
input wire [SIZE_B-1:0] B, 
input wire [SIZE_C-1:0] C, 
output wire [SIZE_DATA_OUT-1:0] DATA_OUT 
);

wire [15:0] DATA0;

always@(!clk) 
        begin
	DATA0[15:0] = A[7:0] * B[7:0] + C[7:0]; 
end

always@(clk) 
       begin
	DATA_OUT[15:0] <= DATA0[15:0];  
end

endmodule