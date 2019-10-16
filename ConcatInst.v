module ConcatInst (input wire[15:0] Inst15a0, input wire[20:16] Inst20a16, input wire[25:21] Inst25a21, output reg[25:0] Inst25a0);

always @ (*) Inst25a0 <= {Inst25a21,Inst20a16,Inst15a0};

endmodule