class monitor extends uvm_monitor;
	`uvm_component_utils(monitor)
uvm_analysis_port#(apb_trans) mon_ap;
virtual apb_if vif;
apb_trans tr;
function new(string name="monitor",uvm_component parent);
	super.new(name,parent);
endfunction

virtual function void build_phase(uvm_phase phase);
	super.build_phase(phase);
mon_ap=new("mon_ap",this);
if(!uvm_config_db#(virtual apb_if)::get(this,"","vif",vif))
	`uvm_fatal("mon","error in getting interface handle")
endfunction

virtual task run_phase(uvm_phase phase);
tr=apb_trans::type_id::create("tr");
	forever begin
		repeat(3)@(posedge vif.pclk);
		tr.psel=vif.psel;
		tr.penable=vif.penable;
		tr.pwrite=vif.pwrite;
		tr.paddr=vif.paddr;
		tr.pwdata=vif.pwdata;
		tr.prdata=vif.prdata;
		tr.pslverr=vif.pslverr;
		tr.pready=vif.pready;
		tr.irq=vif.irq;
		`uvm_info("mon",$sformatf("psel=%0b penable=%0b pwrite=%0b paddr=%0h pwdata=%0h prdata=%0h pslverr=%0b pready=%0b irq=%0b",tr.psel,tr.penable,tr.pwrite,tr.paddr,tr.pwdata,tr.prdata,tr.pslverr,tr.pready,tr.irq),UVM_NONE)
mon_ap.write(tr);
end
endtask
endclass
