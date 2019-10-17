module SS (
input[31:0] EntradaB,
input[31:0] Data,
input[1:0] SSControl,
output reg[31:0] toWriteData
);

always @ (*) begin
	if (SSControl == 2'b00) begin //sb
		toWriteData <= {Data[31:8],EntradaB[7:0]};
		end
	if (SSControl == 2'b01) begin //sh
		toWriteData <= {Data[31:16],EntradaB[15:0]};
		end
	if (SSControl == 2'b10) begin //sw
		toWriteData <= EntradaB;
		end
end

endmodule 