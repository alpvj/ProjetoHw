module ShiftLeft2de32pra32(input logic [31:0] inputSL, output logic [31:0] ouputSL);
always_comb begin
	outputSL = inputSL * 4;
end
endmodule: ShiftLeft2de32pra32