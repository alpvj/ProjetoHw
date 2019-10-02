module AluControl(input logic[5:0] funct, input logic [1:0] ALUOp, output logic[2:0] ALUOpSelector);

//enum logic [5:0] {add = 6'h20, andULA = 6'h24, sub = 6'h22, xorULA = 6'h26} man;
parameter add = 6'h20;
parameter andULA = 6'h24;
parameter sub = 6'h22;
parameter xorULA = 6'h26;


always_comb begin
	case (ALUOp)
		2'b00: begin//PC+4
			ALUOpSelector = 3'b001;
		end
		2'b01: begin//Tipo R
			case(funct)
				add: begin
					ALUOpSelector = 3'b001;
				end
				sub: begin
					ALUOpSelector = 3'b010;
				end
				andULA: begin
					ALUOpSelector = 3'b011;
				end
				xorULA: begin
					ALUOpSelector = 3'b110;
				end
				default: begin
					ALUOpSelector = 3'b001;
				end
			endcase
		end
		2'b10: begin//Comparacoes
			ALUOpSelector = 3'b010;
		end
		default: begin//Hold
			ALUOpSelector = 3'b000;
		end
	endcase
end

endmodule: AluControl