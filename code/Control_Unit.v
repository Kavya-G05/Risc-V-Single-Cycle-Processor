//Control Unit
module Control_Unit(
    input [6:0] instruction,
    output reg Branch,
    output reg MemRead,
    output reg MemtoReg,
    output reg [1:0]ALUOp,
    output reg MemWrite,
    output reg ALUSrc,
    output reg RegWrite
    );
    always @(*)
    begin
        case(instruction)
        7'b0110011 : {ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite,Branch,ALUOp} <= 8'b001000_10;//R-type inst
        7'b0000011 : {ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite,Branch,ALUOp} <= 8'b111100_00;//load(lw)-type inst
        7'b0100011 : {ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite,Branch,ALUOp} <= 8'b100010_00;//store(sw)-type inst dontcare=0
        7'b1100011 : {ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite,Branch,ALUOp} <= 8'b000001_01;//branch(beq)-type inst dontcare=0

        endcase
    end
endmodule
