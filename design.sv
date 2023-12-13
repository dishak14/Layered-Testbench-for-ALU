module alu (
  input logic [7:0] a, b,
  input bit [1:0] s,
  output logic  [8:0]y
);
  always_comb begin
    case (s)
      2'b00: y = a | b; // OR
      2'b01: y = a & b; // AND
      2'b10: y = a + b; // ADD
      2'b11: y = a - b; // SUB
      
    endcase
  end
endmodule
