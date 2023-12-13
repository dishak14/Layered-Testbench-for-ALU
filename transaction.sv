class transaction;
  rand logic [7:0] a;
  rand logic[7:0] b;
  rand bit [1:0] s;
  logic [8:0] y;
 
  function void display(string name);
    $display("------------------------");
    $display("%s",name);
    $display("------------------------");
    $display("a=%0d, b=%0d, s=%0b",a,b,s);
    $display("y=%0d ",y);
    $display("------------------------");
  endfunction
endclass
