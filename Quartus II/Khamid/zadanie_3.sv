module zadanie_3 (
  input wire d,    // ���� ������
  input wire clk,  // ���� ��������� �������
  output reg out   // ����� ������
);

  always @(posedge clk) begin
    out <= d;  // ����������� ������ �������� ����� ������ ��� ������������� ������ ��������� �������
  end

endmodule