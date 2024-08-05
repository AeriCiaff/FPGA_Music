module select_music(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input key,
    output reg [3:0] Q
);

reg [1:0] count = 2'b00;

always @(negedge key) begin
    count <= count + 1;
end

always @(*) begin
    case(count)
        2'b00: Q = A;
        2'b01: Q = B;
        2'b10: Q = C;
        2'b11: Q = D;
        default: Q = 4'b0000;
    endcase
end

endmodule
