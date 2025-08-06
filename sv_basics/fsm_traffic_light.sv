// fsm_traffic_light.sv
// Simple 3-state traffic light controller FSM

module fsm_traffic_light (
  input  logic clk,
  input  logic rst_n,
  output logic red,
  output logic yellow,
  output logic green
);

  typedef enum logic [1:0] {
    RED     = 2'b00,
    GREEN   = 2'b01,
    YELLOW  = 2'b10
  } state_t;

  state_t state, next_state;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      state <= RED;
    else
      state <= next_state;
  end

  always_comb begin
    unique case (state)
      RED:     next_state = GREEN;
      GREEN:   next_state = YELLOW;
      YELLOW:  next_state = RED;
      default: next_state = RED;
    endcase
  end

  always_comb begin
    red    = (state == RED);
    green  = (state == GREEN);
    yellow = (state == YELLOW);
  end

endmodule
