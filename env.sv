/*`include "top_reg_block.sv"
`include "agent.sv"
`include "adapter.sv"*/
class env extends uvm_env;
	`uvm_component_utils(env)
agent agt;
top_reg_block regmodel;
adapter adp;
uvm_reg_predictor#(apb_trans) pred;
//scoreboard s;

function new(string name="env",uvm_component parent);
	super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	pred=uvm_reg_predictor#(apb_trans)::type_id::create("pred",this);
	agt=agent::type_id::create("agt",this);
	//s=scoreboard::type_id::create("s",this);
	regmodel=top_reg_block::type_id::create("regmodel",this);
	regmodel.build();
	adp=adapter::type_id::create("adp");
endfunction

function void connect_phase(uvm_phase phase);
	super.connect_phase(phase);
	regmodel.default_map.set_sequencer(.sequencer(agt.seqr),.adapter(adp));
	regmodel.default_map.set_base_addr(0);
	pred.map=regmodel.default_map;
	pred.adapter=adp;
	agt.m.mon_ap.connect(pred.bus_in);
  regmodel.default_map.set_auto_predict(1);
endfunction
endclass
