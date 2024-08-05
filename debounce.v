module debounce(
    input clk,
    input noisy_key,
    output reg clean_key
);

reg [3:0] shift_reg;

always @(posedge clk) begin
    shift_reg <= {shift_reg[2:0], noisy_key};
    if(shift_reg == 4'b1111) begin
        clean_key <= 1'b1;
    end else if(shift_reg == 4'b0000) begin
        clean_key <= 1'b0;
    end
end

endmodule
