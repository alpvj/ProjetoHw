module ExcpMux (input wire [1:0] controlador, output reg [31:0] outputMux);
	
always @(*) begin
	case(controlador)
		2'b00:begin
			outputMux <= 32'd253;
			end
		2'b01:begin
			outputMux <= 32'd254;
			end
		2'b10:begin
			outputMux <= 32'd255;
			end
	endcase
end
endmodule