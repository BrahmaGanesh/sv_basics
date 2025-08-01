// counter.sv
// Parameterized up-counter with enable and active-low reset

module counter #(
    parameter WIDTH=8
    )(
  input logic clk,
  input logic rst_n,
  input logic enable,
  output logic [WIDTH-1:0] count
  );
  
  always_ff @(posedge clk or negedge rst_n)begin
    if(!rst_n) count<='0;
    else if(enable) count<=count+1;
  end
endmodule
  