// MUX1 ALU mux
module Mux1(
    input sel1,
    input [31:0] A1,
    input [31:0] B1,
    output [31:0] Mux1_out
    );
    assign Mux1_out = (sel1==1'b0)? A1 : B1;
endmodule
