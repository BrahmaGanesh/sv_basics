// mux2to1.sv
// Parameterized 2-to-1 multiplexer

module mux2to1 #(
    parameter WIDTH=8
    )(
input logic sel,
input logic [WIDTH-1:0] in0,
input logic [WIDTH-1:0] in1,
output logic [WIDTH-1:0] out
);
 
  always_comb begin
    case(sel)
      1'b0 : out=in0;
      1'b1 : out=in1;
      default : out='0;
    endcase
  end
endmodule