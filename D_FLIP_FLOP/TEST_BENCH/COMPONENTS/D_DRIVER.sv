'include "uvm_macros.svh";
import uvm_pkg::*;

class D_DRIVER extends uvm_driver; 
  
  virtual DFF_INTERFACDE Virtual_dff // handle for virtual interface 
  
  'uvm_component_utils(D_DRIVER) // regestiation to uvm_factory 
  
  function new (string name = "D_DRIVER", uvm_component parent) // comstuctor for the object
    super.new(name,parent);// using  the super.new to get compy form the parent 
    
  endfunction
  
  function void build_phase(uvm_phase phase) // build phase of uvm component its gets constucted and stays form 0 simultion to end of simulation 
    super.build_phase(phase) // no istantion of anything as dirver is the last of the hiraricy   
  endfunction
  
  
  
  task void run_phase(uvm_phase phase) // during run phase this pahse will be excicuted 
    super.run_phase(phase)
    forever
    // using port we need to request Item   
    
    Virtual_dff.D <= transaction.D;
    // send item done signal 
    end 
  endtask
  