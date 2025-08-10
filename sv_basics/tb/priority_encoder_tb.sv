// priority_encoder_tb.sv

module priority_encoder_tb;

  logic [7:0] in;
  logic [2:0] out;
  logic       valid;

  priority_encoder uut (
    .in(in),
    .out(out),
    .valid(valid)
  );

  initial begin
    $display("=== priority_encoder_tb ===");
    $display("| Time |        in        | out | valid |");
    $display("------------------------------------------");
    $monitor("| %4t | %b |  %3b |   %b   |", 
             $time, in, out, valid);

    in = 8'b00000000; #10; 
    in = 8'b00000001; #10;
    in = 8'b00000100; #10; 
    in = 8'b00010000; #10; 
    in = 8'b01000000; #10; 
    in = 8'b10000000; #10;
    in = 8'b10101010; #10; 
    in = 8'b00001111; #10; 
    $finish;
  end

endmodule
