module MorD (input wire controlador, input wire [31:0] mult, div, output reg [31:0] outputMux);
	
always @(*) begin
	case(controlador)
		1'b0:begin
			outputMux <= mult;
			end
		1'b1:begin
			outputMux <= div;
			end
	endcase
end
endmodule