interface apb_if(input logic pclk);
logic presetn;
logic psel;
logic penable;
logic pwrite;
logic [15:0]paddr;
logic [31:0]pwdata;
logic pready;
logic pslverr;
logic [31:0]prdata;
logic irq;

/*clocking drv_cb@(posedge pclk);
output psel;
output penable;
output pwrite;
output paddr;
output pwdata;
input prdata;
input pready;
input pslverr;
input irq;
endclocking

clocking mon_cb@(posedge pclk);
input psel;
input penable;
input pwrite;
input paddr;
input pwdata;
input prdata;
input pready;
input pslverr;
input irq;
endclocking

modport DRV(clocking drv_cb);
modport MON(clocking mon_cb);*/
endinterface
