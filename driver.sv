class driver extends uvm_driver#(apb_trans);
  `uvm_component_utils(driver)

  virtual apb_if vif;

  function new(string name = "driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual apb_if)::get(this, "", "vif", vif))
      `uvm_fatal("DRV", "unable to access interface")
  endfunction

  virtual task run_phase(uvm_phase phase);
    apb_trans tr;

    reset_dut();                         

    forever begin
      seq_item_port.get_next_item(tr);   
      drive_dut(tr);
      seq_item_port.item_done();         
    end
  endtask

  task reset_dut();
    @(posedge vif.pclk);
    vif.presetn <= 1'b0;
    vif.psel    <= 1'b0;
    vif.penable <= 1'b0;
    vif.pwrite  <= 1'b0;
    vif.paddr   <= 16'h0;
    vif.pwdata  <= 32'h0;
    repeat (5) @(posedge vif.pclk);
    vif.presetn <= 1'b1;
    @(posedge vif.pclk);                 
    `uvm_info("DRV", "reset done", UVM_LOW)
  endtask
  task drive_dut(apb_trans tr);
    
    @(posedge vif.pclk);
    vif.psel    <= 1'b1;
    vif.penable <= 1'b0;
    vif.pwrite  <= tr.pwrite;
    vif.paddr   <= tr.paddr;
    vif.pwdata  <= tr.pwdata;

    
    @(posedge vif.pclk);
    vif.penable <= 1'b1;

    
    @(posedge vif.pclk);
    while (!vif.pready) @(posedge vif.pclk);
    tr.prdata  = vif.prdata;
    tr.pslverr = vif.pslverr;

   
    vif.psel    <= 1'b0;
    vif.penable <= 1'b0;

    `uvm_info("DRV",
      $sformatf("%s paddr=0x%0h pwdata=0x%0h prdata=0x%0h pslverr=%0b",
                tr.pwrite ? "WRITE" : "READ",
                tr.paddr, tr.pwdata, tr.prdata, tr.pslverr),
      UVM_MEDIUM)
  endtask
endclass
