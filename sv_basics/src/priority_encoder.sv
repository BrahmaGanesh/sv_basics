// priority_encoder.sv
// 8-to-3 priority encoder (highest index gets priority)

module priority_encoder (
  input  logic [7:0] in,   
  output logic [2:0] out,  
  output logic       valid
);

  always_comb begin
    out   = 3'b000;
    valid = 1'b0;

    casex (in)
      8'b1xxxxxxx: begin out = 3'b111; valid = 1'b1; end
      8'b01xxxxxx: begin out = 3'b110; valid = 1'b1; end
      8'b001xxxxx: begin out = 3'b101; valid = 1'b1; end
      8'b0001xxxx: begin out = 3'b100; valid = 1'b1; end
      8'b00001xxx: begin out = 3'b011; valid = 1'b1; end
      8'b000001xx: begin out = 3'b010; valid = 1'b1; end
      8'b0000001x: begin out = 3'b001; valid = 1'b1; end
      8'b00000001: begin out = 3'b000; valid = 1'b1; end
      default:     begin out = 3'b000; valid = 1'b0; end
    endcase
  end

endmodule
