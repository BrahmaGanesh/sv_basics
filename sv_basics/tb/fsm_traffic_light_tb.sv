// fsm_traffic_light_tb.sv

module fsm_traffic_linght_tb;
  logic clk;
  logic rst_n;
  logic red;
  logic yellow;
  logic green;
  
  fsm_traffic_light uut(.clk(clk),.rst_n(rst_n),.red(red),.yellow(yellow),.green(green));
 
  always #10 clk=~clk;
  
  initial begin
    $display("=== FSM Traffic Light Testbench ===");
    $display("| Time | Red | Green | Yellow |");
    $monitor("|  %0t | %0d |  %0d  |   %0d  |",$time,red,green,yellow);
    
    clk=0;
    rst_n=0;
    
    #10 rst_n=1;
    
    repeat (9) @(posedge clk);
    $finish;
  end
endmodule