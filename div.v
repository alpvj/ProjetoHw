module div(input clk, input reset, input DControl, input [31:0] A, input [31:0] B, output reg Div0, output reg [31:0] resultHi, output reg [31:0] resultLo);
reg [31:0] quociente;
reg [31:0] dividendo;
reg [31:0] divisor;
reg [31:0] resto;
reg [31:0] compQuociente;
integer contador = 31;
reg g;
reg j;


always @ (posedge clk) begin
	if(reset) begin
		quociente = 32'd0;
		dividendo = 32'd0;
		divisor = 32'd0;
		resto = 32'd0;
		g = 1'b0;
		j = 1'b0;
		contador = 0;
	end
	if(DControl) begin
		contador = 31;
		dividendo = A;
		divisor = B;
		resultHi = 32'd0;
		resultLo = 32'd0;
		if(divisor == 0) begin
			Div0 = 1'b1;
			contador = 0;
		end else begin
			Div0 = 1'b0;
		end
		if(A[31] != B[31]) begin
			g = 1'b1;
		end else begin
			g = 1'b0;
		end
		if(dividendo[31] == 1'b1) begin
			dividendo = (~dividendo + 32'd1);
			j = 1'b1;
		end else begin
			j = 1'b0;
		end
		if(divisor[31] == 1'b1) begin
			divisor = (~divisor + 32'd1);
		end
		quociente = 32'd0;
		resto = 32'd0;
	end
	
	resto = resto << 1;
	
	resto[0] = dividendo[contador];
	
	if(resto >= divisor) begin
		resto = resto - divisor;
		quociente[contador] = 1;
	end
	
	if(contador >= 0) begin
		contador = contador - 1;
	end
	if(contador == -1) begin
		resultHi = resto;
		resultLo = quociente;
		if(g == 1'b1) begin
			resultLo = (~resultLo + 1);
		end
		if(j == 1'b1) begin
			resultHi = (~resultHi + 1);
		end
		contador = -10;
	end
	if(contador == -10) begin
		quociente = 32'd0;
		dividendo = 32'd0;
		divisor = 32'd0;
		resto = 32'd0;
	end
end
endmodule