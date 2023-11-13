module zadanie_4 (
  input wire [7:0] A,    // ���� A
  input wire [7:0] B,    // ���� B
  input wire [7:0] C,    // ���� C
  input wire clk,        // ���� ��������� �������
  output reg [7:0] DATA_OUT  // ����� ������
);

  always @(posedge clk) begin
    DATA_OUT <= (A * B) + C;  // ��������� �������� ��� ������������� ������ ��������� �������
  end

endmodule