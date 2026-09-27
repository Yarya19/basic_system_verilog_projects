// driver class : take the mailbox info and put into DUT through interface 

class driver;
  virtual intf vif; // virtual interface : interface is static, class is dynamic , so virtual
  // vif point to actual interface
  
  mailbox gen2drv;
  
  function new (virtual intf vif , mailbox gen2drv); // constructor
    this.vif = vif;
    this.gen2drv = gen2drv;
  endfunction
  
  task main();
    
    repeat(2) begin
      transaction trans;
      
      gen2drv.get(trans); //driver get the transactions from mailbox to driver
      
      vif.a <= trans.a;
      vif.b <= trans.b;
      vif.c <= trans.c;
      #1;
//       trans.sum <= vif.sum;
//       trans.carry <= vif.carry;
      
      trans.display("driver class signals ");
    end 
  endtask
endclass
      