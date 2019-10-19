module mult(input clk, input reset, input MDControl, input [31:0] A, input [31:0] B, output reg [31:0] resultHi, output reg [31:0] resultLo);
reg [64:0] AHelp = 65'd0;
reg [31:0] Negativ;
reg [64:0] ANeg;
reg [64:0] Prod;
integer contador = 32;


always @ (posedge clk) begin
	if(reset) begin
		resultHi = 32'd0;
		resultLo = 32'd0;
		AHelp = 65'd0;
		Negativ = 32'd0;
		ANeg = 32'd0;
		Prod = 32'd0;
	end
	
	if(MDControl) begin
		contador = 32;
		Negativ = ~A + 1;
		AHelp = {A[31:0], 33'd0};
		ANeg = {Negativ[31:0], 33'd0};
		Prod = {32'd0, B[31:0], 1'b0};
	end
	
	case(Prod[1:0])
		2'b01: begin
		 Prod = Prod + AHelp;
		end
		2'b10: begin
		 Prod = Prod + ANeg;
		end
	endcase
	Prod = Prod >> 1;
	if (Prod[63] == 1'b1) begin
		Prod[64] = 1'b1;
	end
	if(contador > 0) begin
		contador = contador - 1;
	end
	if(contador == 0) begin
		resultHi = Prod[64:33];
		resultLo = Prod[32:1];
		contador = -1;
	end
	if(contador == -1) begin
		AHelp = 65'd0;
		ANeg = 65'd0;
		Prod = 65'd0;
		Negativ = 32'd0;
	end
end
endmodule