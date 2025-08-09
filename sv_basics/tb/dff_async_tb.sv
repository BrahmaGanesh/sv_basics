// dff_async_tb.sv

module dff_async_tb;
  logic clk;
  logic rst_n;
  logic d;
  logic q;
  
  dff_async uut(.clk(clk),.rst_n(rst_n),.d(d),.q(q));
  
  always #5 clk=~clk;
  
  initial begin
    $display("=== dff_async_tb===");
    $monitor("| Time=%0t | rst_n=%b | d=%b | q=%b |",$time,rst_n,d,q);
   // Initialize
    clk   = 0;
    rst_n = 0;   // assert reset
    d     = 0;
    
    // Hold reset
    #10; 
    rst_n = 1;   // deassert reset
    
    // Apply stimulus
    #5  d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 0;
    #10
    $finish;
  end
endmodule