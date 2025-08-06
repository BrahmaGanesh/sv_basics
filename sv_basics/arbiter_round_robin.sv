// arbiter_round_robin.sv
// 4-way Round Robin Arbiter

module arbiter_round_robin (
  input  logic        clk,
  input  logic        rst_n,
  input  logic [3:0]  req,     
  output logic [3:0]  grant    
);

  logic [1:0] last_grant;


  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      last_grant <= 2'd0;
      grant <= 4'd0;
    end else begin
      grant = 4'd0; 

    
      unique casez (1'b1)
        req[(last_grant+1)%4]: begin
          grant[(last_grant+1)%4] <= 1'b1;
          last_grant <= (last_grant+1)%4;
        end
        req[(last_grant+2)%4]: begin
          grant[(last_grant+2)%4] <= 1'b1;
          last_grant <= (last_grant+2)%4;
        end
        req[(last_grant+3)%4]: begin
          grant[(last_grant+3)%4] <= 1'b1;
          last_grant <= (last_grant+3)%4;
        end
        req[(last_grant+0)%4]: begin
          grant[(last_grant+0)%4] <= 1'b1;
          last_grant <= (last_grant+0)%4;
        end
        default: begin
          grant <= 4'd0;
        end
      endcase
    end
  end

endmodule
