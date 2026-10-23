class apb_trans extends uvm_sequence_item;
	`uvm_object_utils(apb_trans)
	rand logic[15:0] paddr;
	rand logic[31:0] pwdata;
	rand logic pwrite;
    rand logic psel;
  	rand logic penable;
	/*rand logic psel;
	rand logic penable;*/
	logic[31:0] prdata;
	logic pready;
	logic pslverr;
	logic irq;
function new(string name="apb_trans");
	super.new(name);
endfunction
endclass
