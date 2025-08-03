// dff_async.sv
// D Flip-Flop with asynchronous active-low reset

module dff_async(
    input logic clk,  // Clock input
    input logic rst_n,// Asynchronous active-low reset
    input logic d,    // Data input
    input logic q     // Data Output
);

always_ff @(posedge clk or negedge rst_n)begin
if(!rst_n)
q <= 1'b0; // Reset output to 0
else
q <= d;
end
endmodule