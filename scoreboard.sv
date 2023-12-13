class scoreboard;
  bit result_ok;
  mailbox mon2scb;
  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction
  task main;
    transaction trans;
    repeat(1);
    begin
      mon2scb.get(trans);
      if((trans.s===2'b00 && trans.y === (trans.a | trans.b)) || (trans.s===2'b01 && trans.y === (trans.a & trans.y)) || (trans.s===2'b10 && trans.y === (trans.a + trans.b)) || (trans.s===2'b11 && trans.y === (trans.a - trans.b)))
       $display("Result is as expected");
      else 
        $display("wrong");
      
      
      trans.display("Scoreboard");
    end
  endtask
endclass
