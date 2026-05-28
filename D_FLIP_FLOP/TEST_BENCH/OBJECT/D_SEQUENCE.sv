import uvm_pkg::*
  
  class D_SEQUENCE extends uvm_sequence; 
    
    'uvm_object_utils(D_SEQUENCE)// registertation 
    
    function new(string = "D_SEQUENCE") // constructor function
      super.new(name)
    endfunction
    
    task body(uvm_phase phase)
      super.body(phase)
      D_SEQUENCE d_sequence;
      d_sequence = D_SEQUENCE::type_id()::create(); // creating the sequence item here
      super.run(phase);
      start_item(d_sequence); // this is to start the sequence on the sequencer 
      assert(d_sequence.randomize());
      finish_item(d_sequence);// finsih the 
    endtask
    
    
    