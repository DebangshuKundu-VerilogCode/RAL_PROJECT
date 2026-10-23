class pkt_seq extends uvm_sequence #(uvm_reg_item);
  `uvm_object_utils(pkt_seq)
  top_reg_block regmodel;
  function new(string name = "pkt_seq");
    super.new(name);
  endfunction
  task body();
    uvm_status_e status;
    uvm_reg_data_t wr_data;
    uvm_reg_data_t rd_data;
    regmodel.lock.write(status,32'hA5A5C3C3);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
     regmodel.lock.write(status,32'hA5A5C3C3);
    regmodel.port_enable.write(status,32'h0000000F);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
      regmodel.lock.write(status,32'hA5A5C3C3);
    regmodel.fwd_enable.write(status,32'h0000000F);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
      regmodel.lock.write(status,32'hA5A5C3C3);
    regmodel.switch_ctrl.write(status,32'h00000009);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
      regmodel.lock.write(status,32'hA5A5C3C3);
    regmodel.gen_pkt_cfg.write(status,32'h00100401);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
       regmodel.lock.write(status,32'hA5A5C3C3);
    regmodel.gen_interval.write(status,32'h00000002);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
       regmodel.lock.write(status,32'hA5A5C3C3);
    regmodel.gen_count.write(status,32'h00000004);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
       regmodel.lock.write(status,32'hA5A5C3C3);
    regmodel.irq_enable.write(status,32'h00000041);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
       regmodel.lock.write(status,32'hA5A5C3C3);
    regmodel.gen_ctrl.write(status,32'h00000003);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
      #1000;
     regmodel.stat_rx.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
      if(rd_data==32'h00000004)
        `uvm_info("pkt_SEQ",
                  $sformatf("PASS:4 packets received"), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
                 $sformatf("FAIL: 4 packets not received"))
                           
    
    regmodel.stat_tx.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
      
    if(rd_data==32'h00000004)
        `uvm_info("pkt_SEQ",
                  $sformatf("PASS:4 packets transmitted",), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
                 $sformatf("FAIL: 4 packets not transmitted 0x%0h",rd_data))
                           
     
                           
     regmodel.stat_drop.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if(rd_data==32'h00000000)
        `uvm_info("pkt_SEQ",
                  $sformatf("PASS:no packets dropped"), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
                 $sformatf("FAIL: packets dropped"))
                                            
        
                           
                           
         regmodel.gen_status.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
      if(rd_data[1]==1'b1)
        `uvm_info("pkt_SEQ",
                  $sformatf("PASS:generator completed"), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
                 $sformatf("FAIL:generator not completed"))
                           
                           
                           
     regmodel.irq_status.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
      if(rd_data[0]==1'b1)
        `uvm_info("pkt_SEQ",
                  $sformatf("PASS:4 completion interrupt status is set"), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
                 $sformatf("FAIL:completion interrupt status is not set"))
                           
                           
                           
                           
                           endtask
                           endclass
