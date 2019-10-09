module IorD (input wire clk, input wire [1:0] controlador, input wire [31:0] input0, input1, input2, input3, output reg [31:0] outputMux);
	
always @(posedge clk)begin
	case(controlador)
		2'b00:begin
			outputMux <= input0;
			end
		2'b01:begin
			outputMux <= input1;
			end
		2'b10:begin
			outputMux <= input2;
			end
		2'b11:begin
			outputMux <= input3;
			end
	endcase
end
endmodule