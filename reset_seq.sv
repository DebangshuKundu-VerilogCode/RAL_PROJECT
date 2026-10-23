//`include "top_reg_block.sv"
class reset_seq extends uvm_sequence;
	`uvm_object_utils(reset_seq)
top_reg_block regmodel;
function new(string name="reset_seq");
	super.new(name);
endfunction

task body;
uvm_status_e status;
uvm_reg_data_t data;
uvm_reg_data_t data1;

regmodel.reset();
regmodel.device_id.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
  `uvm_error("reset_test", "DEVICE_ID read failed")
`uvm_info("reset_test",$sformatf("DEVICE_ID reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.version.read(status,data1,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "VERSION read failed")
    `uvm_info("reset_test",$sformatf("VERSION reset value=0x%08h",data1),UVM_MEDIUM)
    
    
regmodel.switch_status.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "SWITCH_STATUS read failed")
    `uvm_info("reset_test",$sformatf("SWITCH_STATUS reset value=0x%08h",data),UVM_MEDIUM)
    
  regmodel.port_status.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "PORT_STATUS read failed")
    `uvm_info("reset_test",$sformatf("PORT_STATUS reset value=0x%08h",data),UVM_MEDIUM)  
    
    regmodel.gen_status.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "PORT_STATUS read failed")
    `uvm_info("reset_test",$sformatf("GEN_STATUS reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.stat_rx.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "STAT_RX read failed")
    `uvm_info("reset_test",$sformatf("STAT_RX reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.stat_tx.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "STAT_TX read failed")
    `uvm_info("reset_test",$sformatf("STAT_TX reset value=0x%08h",data),UVM_MEDIUM)
    
     regmodel.stat_drop.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "STAT_DROP read failed")
    `uvm_info("reset_test",$sformatf("STAT_DROP reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.switch_ctrl.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "SWITCH_CTRL read failed")
    `uvm_info("reset_test",$sformatf("SWITCH_CTRL reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.port_enable.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "PORT_ENABLE read failed")
    `uvm_info("reset_test",$sformatf("PORT_ENABLE reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.fwd_enable.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "FWD_ENABLE read failed")
    `uvm_info("reset_test",$sformatf("FWD_ENABLE reset value=0x%08h",data),UVM_MEDIUM)
    
     regmodel.gen_ctrl.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "GEN_CTRL read failed")
    `uvm_info("reset_test",$sformatf("GEN_CTRL reset value=0x%08h",data),UVM_MEDIUM)
    
     regmodel.gen_pkt_cfg.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "GEN_PKT_CFG read failed")
    `uvm_info("reset_test",$sformatf("GEN_PKT_CFG reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.gen_interval.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "GEN_INTERVAL read failed")
    `uvm_info("reset_test",$sformatf("GEN_INTERVAL reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.gen_count.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "GEN_COUNT read failed")
    `uvm_info("reset_test",$sformatf("GEN_COUNT reset value=0x%08h",data),UVM_MEDIUM)
    
     regmodel.irq_status.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "IRQ_STATUS read failed")
    `uvm_info("reset_test",$sformatf("IRQ_STATUS reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.irq_enable.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "IRQ_ENABLE read failed")
    `uvm_info("reset_test",$sformatf("IRQ_ENABLE reset value=0x%08h",data),UVM_MEDIUM)
    
     regmodel.irq_force.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "IRQ_FORCE read failed")
    `uvm_info("reset_test",$sformatf("IRQ_FORCE reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.err_status.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "ERR_STATUS read failed")
    `uvm_info("reset_test",$sformatf("ERR_STATUS reset value=0x%08h",data),UVM_MEDIUM)
    
     regmodel.err_enable.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "ERR_ENABLE read failed")
    `uvm_info("reset_test",$sformatf("ERR_ENABLE reset value=0x%08h",data),UVM_MEDIUM)
    
     regmodel.err_inject.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "ERR_INJECT read failed")
    `uvm_info("reset_test",$sformatf("ERR_INJECT reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.err_count.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "ERR_COUNT read failed")
    `uvm_info("reset_test",$sformatf("ERR_COUNT reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.err_info.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "ERR_INFO read failed")
    `uvm_info("reset_test",$sformatf("ERR_INFO reset value=0x%08h",data),UVM_MEDIUM)
    
     regmodel.lock.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "LOCK read failed")
    `uvm_info("reset_test",$sformatf("LOCK reset value=0x%08h",data),UVM_MEDIUM)
    
    regmodel.soft_reset.read(status,data,UVM_FRONTDOOR);
  if (status != UVM_IS_OK)
    `uvm_error("reset_test", "SOFT_RESET read failed")
    `uvm_info("reset_test",$sformatf("SOFT_RESET reset value=0x%08h",data),UVM_MEDIUM)
  
  
  
endtask
endclass
