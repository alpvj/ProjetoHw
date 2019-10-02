module mux16pra32bits (input logic [3:0] controlador, input logic [31:0] input0, input1, input2, input3, input4, input5, input6, input7, input8, input9, input10, input11, input12, input13, input14, input15, output logic [31:0] outputMux);
always_comb begin
	case(controlador)
	4'b0000:begin
		outputMux <= input0;
		end
	4'b0001:begin
		outputMux <= input1;
		end
	4'b0010:begin
		outputMux <= input2;
		end
	4'b0011:begin
		outputMux <= input3;
		end
	4'b0100:begin
		outputMux <= input4;
		end
	4'b0101:begin
		outputMux <= input5;
		end
	4'b0110:begin
		outputMux <= input6;
		end
	4'b0111:begin
		outputMux <= input7;
		end
	4'b1000:begin
		outputMux <= input8;
		end
	4'b1001:begin
		outputMux <= input9;
		end
	4'b1010:begin
		outputMux <= input10;
		end
	4'b1011:begin
		outputMux <= input11;
		end
	4'b1100:begin
		outputMux <= input12;
		end
	4'b1101:begin
		outputMux <= input13;
		end
	4'b1110:begin
		outputMux <= input14;
		end
	4'b1111:begin
		outputMux <= input15;
		end
	endcase
endmodule: mux16pra32bits