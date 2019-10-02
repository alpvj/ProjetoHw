module ShiftLeft2de26pra28(input logic [25:0] inputSL, output logic [27:0] ouputSL);
always_comb begin
	outputSL = (inputSL, 2'b0);
end
endmodule: ShiftLeft2de26pra28