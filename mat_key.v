module mat_key (
    input clk,
    input rst,
    output reg [3:0] row,
    input [3:0] col,
	 output reg [3:0] keyout
);

reg [1:0] S = 0;
reg [7:0] key;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        S <= 0;
        row <= 4'b1110;
        key <= 4'b1111;
    end
	 else
	 begin
        key <= 1;
        case (S)
            2'b00: row <= 4'b1110;
            2'b01: row <= 4'b1101;
            2'b10: row <= 4'b1011;
            2'b11: row <= 4'b0111;
        endcase

        if (col != 4'b1111) begin
            key <= {row, col};
        end
		  if (S == 2'b11) begin
				S <= 0;
			end
			else begin
				S <= S+1;
			end
    end
end


always @(key) begin
    case (key)
        8'b1110_1110: keyout = 0;
        8'b1110_1101: keyout = 1;
        8'b1110_1011: keyout = 2;
        8'b1110_0111: keyout = 3;
		  8'b1101_1110: keyout = 4;
		  8'b1101_1101: keyout = 5;
		  8'b1101_1011: keyout = 6;
		  8'b1101_0111: keyout = 7;
		  8'b1011_1110: keyout = 8;
		  8'b1011_1101: keyout = 9;
		  8'b1011_1011: keyout = 10;
		  8'b1011_0111: keyout = 11;
		  8'b0111_1110: keyout = 12;
		  8'b0111_1101: keyout = 13;
        8'b0111_1011: keyout = 14;
		  8'b0111_0111: keyout = 15;
        default: keyout = 0;
    endcase
end

endmodule