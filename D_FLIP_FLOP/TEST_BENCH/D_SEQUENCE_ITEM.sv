'include "uvm_macros.svh"
import uvm_pkg::*;
  
  class D_SEQUENCE_ITEM extends uvm_sequence_item;
    
    'uvm_object_utils(D_SEQUENCE_ITEM)// registeration to uvm factory
    
    logic randc D; 
    
    function new(string = "sequence item");// this is a constructor for the object
      super.new(name);
    endfunction
    
    // no body or run in sequence ITEM 