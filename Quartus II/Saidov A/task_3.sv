module task_3(
input logic d,
input logic clk,
output logic out
);

always @(posedge clk) begin
out <= d;
end

endmodule