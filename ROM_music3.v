module ROM_music3(output wire[3:0] Q,
                 input wire[7:0] A,
                 input wire CLK
);

reg [3:0] mem[0:247] /* synthesis ram_init_file="music3.mif" */;

assign Q = mem[A];

endmodule
