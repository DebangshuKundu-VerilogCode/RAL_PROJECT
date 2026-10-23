// Code your testbench here
// or browse Examples
`include "apb_pkt_switch.sv"
`include "apb_pkg.sv"
`include "apb_if.sv"

import uvm_pkg::*;
import apb_pkg::*;
module tb;
  bit pclk;
  apb_if vif(pclk);
apb_pkt_switch dut(vif.pclk,vif.presetn,vif.psel,vif.penable,vif.pwrite,vif.paddr,vif.pwdata,vif.prdata,vif.pready,vif.pslverr,vif.irq);

initial begin
pclk=0;
end

always #10 pclk=~pclk;
initial begin
uvm_config_db#(virtual apb_if)::set(null,"*","vif",vif);
run_test("test");
end

initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
endmodule
