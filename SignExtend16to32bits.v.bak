module SignExtend16to32bits(input wire clk, input wire SEControl, input wire [15:0]inputSE, output reg [31:0] outputSE);
	
always @(posedge clk) begin
	if (SEControl == 1) begin
		if (inputSE[15] == 0) begin
			outputSE = {16'b0, inputSE};
		end
		else begin
			outputSE = {16'b1, inputSE};
		end
	end
end
endmodule