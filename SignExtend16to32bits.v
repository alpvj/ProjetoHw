module SignExtend16to32bits(input wire [15:0]inputSE, output reg [31:0] outputSE);
	
always @(*) outputSE <= $signed(inputSE);

endmodule