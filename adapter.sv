class adapter extends uvm_reg_adapter;
	`uvm_object_utils(adapter)
function new(string name="adapter");
	super.new(name);
endfunction

function uvm_sequence_item reg2bus(const ref uvm_reg_bus_op rw);
	apb_trans tr;
	tr=apb_trans::type_id::create("tr");
	tr.paddr=rw.addr;
	tr.pwdata=rw.data;
	if(rw.kind==UVM_WRITE)
		tr.pwrite=1'b1;
	else
		tr.pwrite=1'b0;
	return tr;
endfunction

function void bus2reg(uvm_sequence_item bus_item,ref uvm_reg_bus_op rw);
	apb_trans tr;
	if(!$cast(tr,bus_item)) 
		begin
			`uvm_fatal("adapter","casting failed")
		end
	rw.addr=tr.paddr;
	rw.data=tr.pwrite?tr.pwdata:tr.prdata;
	if(tr.pslverr)
		rw.status=UVM_NOT_OK;
	else
		rw.status=UVM_IS_OK;
	if(tr.pwrite)
		rw.kind=UVM_WRITE;
	else
		rw.kind=UVM_READ;
endfunction
endclass
