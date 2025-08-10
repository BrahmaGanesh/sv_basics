// encoder_8to3_tb.sv

module encoder_8to3_tb;

  logic [7:0] in;
  logic [2:0] out;

  encoder_8to3 uut(.in(in), .out(out));

  initial begin
    $display("=== encoder_8to3_tb ===");
    $monitor("| Time=%0t | in=%08b | out=%03b |", $time, in, out);

    in = 8'b00000001; #10;
    in = 8'b00000010; #10;
    in = 8'b00000100; #10;
    in = 8'b00001000; #10;
    in = 8'b00010000; #10;
    in = 8'b00100000; #10;
    in = 8'b01000000; #10;
    in = 8'b10000000; #10;

    $finish;
  end
endmodule
