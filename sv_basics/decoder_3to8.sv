// decoder_3to8.sv
// 3-to-8 binary decoder

module decoder_3to8 (
    input logic [2:0] in, // 3-bit input
    input logic       enable, // Active-high enable
    output logic [7:0] out  // 8-bit one-hot output
);

always_comb begin
if (enable)
out = 8'b00000001 << in;  // one-hot encoded output
else
out = 8'b00000000;  // All outputs off if disabled
end
endmodule 