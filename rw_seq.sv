class rw_seq extends uvm_sequence #(uvm_reg_item);
  `uvm_object_utils(rw_seq)
  top_reg_block regmodel;
  function new(string name = "rw_seq");
    super.new(name);
  endfunction
  task body();
    uvm_status_e status;
    uvm_reg_data_t wr_data;
    uvm_reg_data_t rd_data;
    //GEN_PKT_CFG WRITE AND READ
    regmodel.lock.write(status,32'hA5A5C3C3);
    wr_data = $urandom();
    wr_data = wr_data & 32'h00FFFF0F;
    regmodel.gen_pkt_cfg.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.gen_pkt_cfg.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
    
    //SWITCH_CTRL  
    regmodel.lock.write(status,32'hA5A5C3C3);
    wr_data = $urandom();
    wr_data=wr_data&32'h00000000000000000000000000001011;
    regmodel.switch_ctrl.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.switch_ctrl.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
      
    //PORT_ENABLE  
     regmodel.lock.write(status,32'hA5A5C3C3);
    wr_data = $urandom();
    wr_data=wr_data&32'h0000000F;
    regmodel.port_enable.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.port_enable.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
      
    //FWD ENABLE  
      regmodel.lock.write(status,32'hA5A5C3C3);
    wr_data = $urandom();
    wr_data=wr_data&32'h0000000F;
    regmodel.fwd_enable.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.fwd_enable.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
      
    
    //GEN_CTRL
     regmodel.lock.write(status,32'hA5A5C3C3);
    wr_data = $urandom();
    wr_data=wr_data&32'h0000000F;
    regmodel.gen_ctrl.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.gen_ctrl.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
      
    //GEN_INTERVAL
     regmodel.lock.write(status,32'hA5A5C3C3);
    wr_data = $urandom();
    wr_data=wr_data&32'h0000FFFF;
    regmodel.gen_interval.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.gen_interval.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
      
    //GEN_COUNT
     regmodel.lock.write(status,32'hA5A5C3C3);
    wr_data = $urandom();
     wr_data=wr_data&32'h0000FFFF;
    regmodel.gen_count.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.gen_count.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
      
    //IRQ_STATUS
    wr_data = $urandom();
    wr_data=wr_data&32'h000000FF;
    regmodel.irq_status.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.irq_status.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
      
     
    //IRQ_ENABLE
     regmodel.lock.write(status,32'hA5A5C3C3);
    wr_data = $urandom();
    wr_data=wr_data&32'h000000FF;
    regmodel.irq_enable.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.irq_enable.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
      
    //ERR_STATUS
    wr_data = $urandom();
    wr_data=wr_data&32'h000000FF;
    regmodel.err_status.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.err_status.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
      
    //ERR_ENABLE
     regmodel.lock.write(status,32'hA5A5C3C3);
    wr_data = $urandom();
    wr_data=wr_data&32'h000000FF;
    regmodel.err_enable.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.err_enable.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
      
    //LOCK
    wr_data = $urandom();
    wr_data=wr_data&32'h00000001;
    regmodel.lock.write(status, wr_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register write failed")
    regmodel.lock.read(status, rd_data);
    if (status != UVM_IS_OK)
      `uvm_error("RW_SEQ", "Register read failed")
    if (wr_data == rd_data)
      `uvm_info("RW_SEQ",
        $sformatf("PASS: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data), UVM_MEDIUM)
    else
      `uvm_error("RW_SEQ",
        $sformatf("FAIL: Written = 0x%0h, Read = 0x%0h",
                  wr_data, rd_data))
     
    

  endtask

endclass
