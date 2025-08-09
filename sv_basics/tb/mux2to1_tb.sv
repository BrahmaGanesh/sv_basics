// mux2to1_tb.sv

module mux2to1_tb;
  
localparam WIDTH=8;
  
logic sel;
logic [WIDTH-1 : 0] in0;
logic [WIDTH-1 : 0] in1;
logic [WIDTH-1 : 0] out;
  
mux2to1 uut(.sel(sel),.in0(in0),.in1(in1),.out(out));
  
initial begin
    $monitor("| Time=%0t | sel=%0b | in0=%0h | in1=%0h | out=%0h |",
                 $time, sel, in0, in1, out);
   	//test case 1
    in0 = 8'h23;in1 = 8'h55;
    #10 sel=0;
    #10 sel=1;
    
    //test case 2
    in0 = 8'haa;in1 = 8'hdd;
    #10 sel=0;
    #10 sel=1;
    
    //test case 1
    in0 = 8'h22;in1 = 8'h35;
    #10 sel=0;
    #10 sel=1;
    #10
    $finish;
  end
endmodule