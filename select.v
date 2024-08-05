module select(input [3:0] A,
              input [3:0] B,
				  input select,
				  output reg[3:0] Q);
always@(A,B,select)
begin
	if(select) Q = A;
	else Q = B;
end
endmodule
