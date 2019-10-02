module SignExtend16to32bits(input logic [15:0]inputSE, output logic [31:0] ouputSE);
always_comb begin
	if (inputSE[15] == 0) begin
		outputSE = (16'b0, inputSE);
	end
	else begin
		outputSE = (16'b1, inputSE);
	end
end
endmodule: SignExtend16to32bits