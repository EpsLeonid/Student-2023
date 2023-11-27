import package_settings_v2::*;
module v2_filter(
		input  wire												clk,
		input  wire												reset,
		input wire [SIZE_ADC_DATA-1:0]							input_data,
		output wire [SIZE_ADC_DATA-1:0]						output_data);
logic [SIZE_ADC_DATA-1:0] d;
logic [SIZE_ADC_DATA-1:0] p;
logic [SIZE_ADC_DATA-1:0] r;
logic [SIZE_ADC_DATA-1:0] s;
integer n;
assign n = SIZE_ADC_DATA - 1;
integer M_2;
integer l_2;
integer k_2;
integer i;
integer j;
	always @(posedge clk or negedge reset) begin
	if(!reset) begin
		output_data <= 0;
		i = 0;
	end
	else begin
		i = 0;
		while (i < 14) begin
			d[i] = input_data[i];
			if (i-k_2 >= 0) begin
				d[i] = d[i] - input_data[i - k_2]; // вычитаем из d(i) значение v(i-k), если i-k >= 1
			end
			if (i-l_2 >= 0) begin
				d[i] = d[i] - input_data[i - l_2]; // вычитаем из d(i) значение v(i-L), если i-L >= 1
			end
			if (i-l_2-k_2 >= 0) begin
				d[i] = d[i] + input_data[i - l_2 - k_2]; // прибавляем к d(i) значение v(i-L-k), если i-L-k >= 1
			end
			i = i+1;
		end
	end
	p[1] = d[1]; // согласно используемым формулам, присваиваем первым элементам массивов следующие значения
	r[1] = p[1] + M_2*d[1]; 
	s[1] = r[1]; 
	j = 2;
	while (j < 14) begin
		p[j] = p[j-1] + d[j];
		r[j] = p[j] + M_2*d[j]; 
		s[j] = s[j-1] + r[j]; 
		j = j+1;
	end
	output_data <= s;
	end
	endmodule
	