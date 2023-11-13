module task_4(
input logic clk, // �������� ���� �� 200 ���
input logic [7:0] A, // 8-��������� ���� �
input logic [7:0] B, // 8-��������� ���� B
input logic [7:0] C, // 8-��������� ���� C
output logic [7:0] DATA_OUT // 8-��������� �����
);

// ������� ��� �������� ������������� � �������� ��������
logic [7:0] result;

always_ff @(posedge clk) begin

result <= A * B + C;  
DATA_OUT <= result;
end

endmodule