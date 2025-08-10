// encoder_8to3.sv
// 8-to-3 binary encoder

module encoder_8to3 (
  input  logic [7:0] in,   
  output logic [2:0] out  
);

  always_comb begin
    out = 3'b000;
    case (1'b1)
      in[0]: out = 3'b000;
      in[1]: out = 3'b001;
      in[2]: out = 3'b010;
      in[3]: out = 3'b011;
      in[4]: out = 3'b100;
      in[5]: out = 3'b101;
      in[6]: out = 3'b110;
      in[7]: out = 3'b111;
      default: out = 3'b000;
    endcase
  end

endmodule
