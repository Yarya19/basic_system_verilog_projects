// Generator Class ; we randomise trans signals and send to driver via mailbox

class generator;
  transaction trans; 
  
  mailbox gen2drv; // mailbox between generator to driver
  
  function new (mailbox gen2drv); 
    
    this.gen2drv = gen2drv;
    
  endfunction
  
  task main();
    
    repeat (2) begin
      trans = new() ; // creating object of transaction class
      
      trans.randomize(); // it randomize the trans signals declared with rand keyword in transaction class
      
      trans.display("generator class signals"); // calling display function to display values
      
      gen2drv.put(trans); //put the transaction data into mailbox
      // #1
    end
  endtask
  
endclass
  