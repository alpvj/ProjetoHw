module mux4pra5bits (input logic [1:0] controlador, input logic [4:0] input0, input1, input2, input3, output logic [4:0] outputMux);
always_comb begin
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
endmodule: mux4pra5bits