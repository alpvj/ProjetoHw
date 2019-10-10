module SignExtend1to32bits(input wire inputSE, output reg [31:0] outputSE);
	
always @(*) outputSE <= $signed(inputSE);

endmodule