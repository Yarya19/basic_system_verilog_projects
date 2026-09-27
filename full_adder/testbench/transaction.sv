// Transaction class : just declare all the signals of the interface/dut

class transaction; // packet class
  rand bit a;
  rand bit b;
  rand bit c;
  
  bit sum;
  bit carry; // outputs so don't need to randomize
  
  // Display function to get a, b, sum, carry in all classes 
  
  function void display (string name); // just a display function to call from all TB components and display values
    
    $display("_____%s______", name);
    $display("a = %0b, b = %0b, c = %0b, sum = %0b, carry = %0b", a, b, c, sum, carry); 
    $display("....................");
    
  endfunction
  
endclass