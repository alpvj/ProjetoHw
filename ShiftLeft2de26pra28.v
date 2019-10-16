module ShiftLeft2de26pra28(input wire [25:0] inputSL, output reg [27:0] outputSL);
	
always @(*) begin
	outputSL = {inputSL, 2'b0};
end
endmodule