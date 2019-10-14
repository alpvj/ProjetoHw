module PCSource (input wire [2:0] controlador, input wire [31:0] input0, input1, input2, input3, input4, input5, input6, input7, output reg [31:0] outputMux);
	
always @(*) begin
	case(controlador)
		3'b000:begin
			outputMux <= input0;
			end
		3'b001:begin
			outputMux <= input1;
			end
		3'b010:begin
			outputMux <= input2;
			end
		3'b011:begin
			outputMux <= input3;
			end
		3'b100:begin
			outputMux <= input4;
			end
		3'b101:begin
			outputMux <= input5;
			end
		3'b110:begin
			outputMux <= input6;
			end
		3'b111:begin
			outputMux <= input7;
			end
	endcase
end
endmodule