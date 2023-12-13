`include "interface.sv"
`include "test.sv"
module tbench_top;
  intf i_intf();
  test t1(i_intf);
  alu a1 (
    .a(i_intf.a),
    .b(i_intf.b),
    .s(i_intf.s),
    .y(i_intf.y)
  );
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule
