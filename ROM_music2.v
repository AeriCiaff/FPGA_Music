module ROM_music2(output wire[3:0] Q,
                 input wire[7:0] A,
                 input wire CLK
);

reg [3:0] mem[0:247] /* synthesis ram_init_file="music2.mif" */;

assign Q = mem[A];

endmodule
