
// scoreboard class

class scoreboard;
  
  mailbox mon2scb; // mailbox between monitor to scoreboard
  
  function new (mailbox mon2scb); 
    
    this.mon2scb = mon2scb;
    
  endfunction
  
  task main();
    transaction trans;
    repeat (3)
      begin
        mon2scb.get(trans);
        trans.display("scoreboard signals");
        
        
        // reference module / golden dut
        
        if((trans.a ^ trans.b ^ trans.c == trans.sum)&&(((trans.a&trans.b) | (trans.a&trans.c) | (trans.b&trans.c)) == trans.carry)) // reference model logic
          $display("------ PASS -------");
        
      else
        $display("!!!!!!!! FAIL !!!!!!!!!");
        
        $display("..........TRANSACTION DONE.........");
        $display("                                      ");
      end
    
  endtask
  
endclass
  