module SignExtend1to32bits(input logic inputSE, output logic [31:0] ouputSE);
always_comb begin
	if (inputSE == 0) begin
		outputSE = (31'b0, inputSE);
	end
	else begin
		outputSE = (31'b1, inputSE);
	end
end
endmodule: SignExtend1to32bits