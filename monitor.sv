class monitor;
  virtual intf vif;
  mailbox mon2scb;
  function new(virtual intf vif, mailbox mon2scb);
    this.vif = vif;
    this.mon2scb = mon2scb;
  endfunction
  task main;
    repeat(1);
    #3;
    begin
      transaction trans;
      trans = new();
      trans.a=vif.a;
      trans.b=vif.b;
      trans.s=vif.s;
      trans.y=vif.y;
      mon2scb.put(trans);
      trans.display("Monitor");
    end
  endtask
endclass

