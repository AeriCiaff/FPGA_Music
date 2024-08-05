module CNT138T(CLK,CNT8,key);
	input CLK;
	input key;
	output wire[7:0] CNT8;
	reg[7:0] CNT;
	wire LD;
	
	always@(posedge CLK or posedge LD or negedge key)
	begin
		if(LD || !key)
			CNT<=8'b0000_0000;
		else
			CNT <= CNT+1;
	end
	assign CNT8 = CNT;
	assign LD=((CNT==248));
endmodule
