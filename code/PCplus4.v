//PC+4
module PCplus4(
    input [31:0] fromPC,
    output [31:0] NextPC
    );
    assign NextPC=4+fromPC;
endmodule
