// decoder_3to8_tb.sv

module decoder_3to8_tb;
  
logic [2:0] in;
logic enable;
logic [7:0] out;
  
decoder_3to8 uut(.in(in),.enable(enable),.out(out));
  
initial begin
    $display("=== 3-to-8 Decoder Test ===");
    $monitor("| Time=%0t | enable=%0d | in=%03b | out=%08b |",$time,enable,in,out);
    
    // Test case 1: Disabled decoder
    enable = 0; in = 3'b000;
    #10;

    // Test case 2: Enable, all inputs from 0 to 7
    enable = 1;
    repeat (8) begin
      #10 in = in + 1;
    end

    // Test case 3: Disable again
    #10 enable = 0; in = 3'b101;
    #10;
    $finish;
  end
endmodule