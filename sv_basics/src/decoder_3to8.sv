// decoder_3to8.sv
// 3-to-8 binary decoder

module decoder_3to8 (
    input logic [2:0] in, 
    input logic       enable, 
    output logic [7:0] out 
);

always_comb begin
if (enable)
out = 8'b00000001 << in;  
else
out = 8'b00000000; 
end
endmodule 