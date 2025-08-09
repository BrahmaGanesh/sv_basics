// counter_tb.sv
module counter_tb;
  
  localparam WIDTH = 8;
  
  logic clk;
  logic rst_n;
  logic enable;
  logic [WIDTH-1 : 0] count;
  
  counter uut(.count(count),.clk(clk),.rst_n(rst_n),.enable(enable));
  
  always #5 clk<=~clk;
  
  initial begin
    $monitor("| Time=%0t | enable=%0d | count=%0d |",$time,enable,count);
    clk=0;
    rst_n=0;
    enable=0;
    
    #10; 
    rst_n=1;
    enable=1;
    
  #150
    enable = 0;

    #30;
    $finish;
  end
endmodule