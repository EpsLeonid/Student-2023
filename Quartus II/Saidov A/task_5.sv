module task_5 #(
parameter DATA_WIDTH = 8 // �������� ����������� ��� ������
)(
input wire [DATA_WIDTH-1:0] A, // ���� A � ����������������� ������������
input wire [DATA_WIDTH-1:0] B, // ���� B � ����������������� ������������
input wire [DATA_WIDTH-1:0] C, // ���� C � ����������������� ������������
input wire clk, // ���� ��������� �������
output reg [DATA_WIDTH-1:0] DATA_OUT // ����� ������ � ����������������� ������������
);

always @(posedge clk) begin
DATA_OUT <= (A * B) + C; // ��������� �������� ��� ������������� ������ ��������� �������
end

endmodule