class test extends uvm_test;
	`uvm_component_utils(test)
env e;
reset_seq rst;
rw_seq rw;
pkt_seq pkt;
function new(string name="test",uvm_component parent);
	super.new(name,parent);
endfunction

virtual function void build_phase(uvm_phase phase);
	super.build_phase(phase);
e=env::type_id::create("e",this);
rst=reset_seq::type_id::create("rst");
  rw=rw_seq::type_id::create("rw");
  pkt=pkt_seq::type_id::create("pkt");
endfunction

virtual task run_phase(uvm_phase phase);
	phase.raise_objection(this);
	/*rst.regmodel=e.regmodel;
	rst.start(e.agt.seqr);*/
    /*rw.regmodel=e.regmodel;
	rw.start(e.agt.seqr);*/
    pkt.regmodel=e.regmodel;
	pkt.start(e.agt.seqr);
	phase.drop_objection(this);
	phase.phase_done.set_drain_time(this,200);
endtask
endclass
