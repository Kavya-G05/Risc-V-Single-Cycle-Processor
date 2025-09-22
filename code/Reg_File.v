//Register File
module Reg_File(
    input clk,
    input reset,
    input [4:0] Rs1,
    input [4:0] Rs2,
    input [4:0] Rd,
    input [31:0] Write_data,
    output [31:0] read_data1,
    output [31:0] read_data2,
    input RegWrite
    );
    reg [31:0] Registers[31:0];
    integer k;
    always @ (posedge clk or posedge reset)
    begin
        if (reset)
            begin
                for(k=0; k<64; k=k+1) begin
                Registers[k]<=32'b00;
                end
            end
        else if(RegWrite) begin
            Registers[Rd] <= Write_data;
        end
    end
    assign read_data1 = Registers[Rs1];
    assign read_data2 = Registers[Rs2];
endmodule
