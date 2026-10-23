`include "uvm_macros.svh"
import uvm_pkg::*;
class DEVICE_ID extends uvm_reg;
	`uvm_object_utils(DEVICE_ID)
	rand uvm_reg_field REVISION;
	rand uvm_reg_field VENDOR_ID;
	rand uvm_reg_field PRODUCT_ID;
function new(string name="DEVICE_ID");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
REVISION=uvm_reg_field::type_id::create("REVISION");
REVISION.configure(	.parent(this),
			.size(8),
			.lsb_pos(24),
			.access("RO"),
			.volatile(0),
			.reset(8'h02),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
VENDOR_ID=uvm_reg_field::type_id::create("VENDOR_ID");
VENDOR_ID.configure(	.parent(this),
			.size(8),
			.lsb_pos(16),
			.access("RO"),
			.volatile(0),
			.reset(8'hA5),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
PRODUCT_ID=uvm_reg_field::type_id::create("PRODUCT_ID");
PRODUCT_ID.configure(	.parent(this),
			.size(16),
			.lsb_pos(0),
			.access("RO"),
			.volatile(0),
			.reset(16'h5357),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));

endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class VERSION extends uvm_reg;
	`uvm_object_utils(VERSION)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field MAJOR;
	rand uvm_reg_field MINOR;
	rand uvm_reg_field PATCH;
function new(string name="VERSION");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(8),
			.lsb_pos(24),
                   .access("RO"),
			.volatile(0),
                   .reset(8'h00),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
MAJOR=uvm_reg_field::type_id::create("MAJOR");
MAJOR.configure(	.parent(this),
			.size(8),
			.lsb_pos(16),
			.access("RO"),
			.volatile(0),
                .reset(8'h01),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
MINOR=uvm_reg_field::type_id::create("MINOR");
MINOR.configure(	.parent(this),
			.size(8),
			.lsb_pos(8),
			.access("RO"),
			.volatile(0),
                .reset(8'h02),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
PATCH=uvm_reg_field::type_id::create("PATCH");
PATCH.configure(	.parent(this),
			.size(8),
			.lsb_pos(0),
			.access("RO"),
			.volatile(0),
                .reset(8'h00),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
endfunction
endclass


`include "uvm_macros.svh"
import uvm_pkg::*;
class SWITCH_STATUS extends uvm_reg;
	`uvm_object_utils(SWITCH_STATUS)
	rand uvm_reg_field RESERVED_1;
	rand uvm_reg_field GEN_FSM;
	rand uvm_reg_field RESERVED_2;
	rand uvm_reg_field ERR_PENDING;
	rand uvm_reg_field GEN_PENDING;
	rand uvm_reg_field PORT_ENABLED;
	rand uvm_reg_field LOCKED;
	rand uvm_reg_field SWITCH_ENABLED;
	rand uvm_reg_field BUSY;
	rand uvm_reg_field READY;
function new(string name="VERSION");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
  RESERVED_1=uvm_reg_field::type_id::create("RESERVED_1");
RESERVED_1.configure(	.parent(this),
			.size(14),
			.lsb_pos(18),
                     .access("RO"),
			.volatile(0),
                     .reset(14'h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
GEN_FSM=uvm_reg_field::type_id::create("GEN_FSM");
GEN_FSM.configure(	.parent(this),
			.size(2),
			.lsb_pos(16),
			.access("RO"),
			.volatile(1),
                  .reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
  RESERVED_2=uvm_reg_field::type_id::create("RESERVED_2");
RESERVED_2.configure(	.parent(this),
			.size(6),
			.lsb_pos(10),
                     .access("RO"),
			.volatile(0),
                     .reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
ERR_PENDING=uvm_reg_field::type_id::create("ERR_PENDING");
ERR_PENDING.configure(	.parent(this),
			.size(1),
			.lsb_pos(9),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
  GEN_PENDING=uvm_reg_field::type_id::create("GEN_PENDING");
GEN_PENDING.configure(	.parent(this),
			.size(1),
			.lsb_pos(8),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
PORT_ENABLED=uvm_reg_field::type_id::create("PORT_ENABLED");
PORT_ENABLED.configure(	.parent(this),
			.size(4),
			.lsb_pos(4),
			.access("RO"),
			.volatile(1),
			.reset(4'hF),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
LOCKED=uvm_reg_field::type_id::create("LOCKED");
LOCKED.configure(	.parent(this),
			.size(1),
			.lsb_pos(3),
			.access("RO"),
			.volatile(1),
			.reset('h1),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
SWITCH_ENABLED=uvm_reg_field::type_id::create("SWITCH_ENABLED");
SWITCH_ENABLED.configure(	.parent(this),
			.size(1),
			.lsb_pos(2),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
BUSY=uvm_reg_field::type_id::create("BUSY");
BUSY.configure(		.parent(this),
			.size(1),
			.lsb_pos(1),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
READY=uvm_reg_field::type_id::create("READY");
READY.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
			.access("RO"),
			.volatile(1),
			.reset('h1),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));

endfunction
endclass




`include "uvm_macros.svh"
import uvm_pkg::*;
class PORT_STATUS extends uvm_reg;
	`uvm_object_utils(PORT_STATUS)
	rand uvm_reg_field PORT3_LEVEL;
	rand uvm_reg_field PORT2_LEVEL;
	rand uvm_reg_field PORT1_LEVEL;
	rand uvm_reg_field PORT0_LEVEL;
function new(string name="PORT_STATUS");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
PORT3_LEVEL=uvm_reg_field::type_id::create("PORT3_LEVEL");
PORT3_LEVEL.configure(	.parent(this),
			.size(8),
			.lsb_pos(24),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
PORT2_LEVEL=uvm_reg_field::type_id::create("PORT2_LEVEL");
PORT2_LEVEL.configure(	.parent(this),
			.size(8),
			.lsb_pos(16),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
PORT1_LEVEL=uvm_reg_field::type_id::create("PORT1_LEVEL");
PORT1_LEVEL.configure(	.parent(this),
			.size(8),
			.lsb_pos(8),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
PORT0_LEVEL=uvm_reg_field::type_id::create("PORT0_LEVEL");
PORT0_LEVEL.configure(	.parent(this),
			.size(8),
			.lsb_pos(0),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
endfunction
endclass


`include "uvm_macros.svh"
import uvm_pkg::*;
class GEN_STATUS extends uvm_reg;
	`uvm_object_utils(GEN_STATUS)
	rand uvm_reg_field RESERVED_1;
	rand uvm_reg_field REMAINING;
	rand uvm_reg_field RESERVED_2;
	rand uvm_reg_field FSM;
	rand uvm_reg_field DONE;
	rand uvm_reg_field RUNNING;
function new(string name="GEN_STATUS");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
  RESERVED_1=uvm_reg_field::type_id::create("RESERVED_1");
RESERVED_1.configure(	.parent(this),
			.size(8),
			.lsb_pos(24),
                     .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
REMAINING=uvm_reg_field::type_id::create("REMAINING");
REMAINING.configure(	.parent(this),
			.size(16),
			.lsb_pos(8),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
  RESERVED_2=uvm_reg_field::type_id::create("RESERVED_2");
RESERVED_2.configure(	.parent(this),
			.size(4),
			.lsb_pos(4),
                     .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
FSM=uvm_reg_field::type_id::create("FSM");
FSM.configure(	.parent(this),
			.size(2),
			.lsb_pos(2),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
DONE=uvm_reg_field::type_id::create("DONE");
DONE.configure(	.parent(this),
			.size(1),
			.lsb_pos(1),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
RUNNING=uvm_reg_field::type_id::create("RUNNING");
RUNNING.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));

endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class STAT_RX extends uvm_reg;
	`uvm_object_utils(STAT_RX)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field RX_PACKETS;
function new(string name="STAT_RX");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(16),
			.lsb_pos(16),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
RX_PACKETS=uvm_reg_field::type_id::create("RX_PACKETS");
RX_PACKETS.configure(	.parent(this),
			.size(16),
			.lsb_pos(0),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class STAT_TX extends uvm_reg;
	`uvm_object_utils(STAT_TX)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field TX_PACKETS;
function new(string name="STAT_TX");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(16),
			.lsb_pos(16),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
TX_PACKETS=uvm_reg_field::type_id::create("TX_PACKETS");
TX_PACKETS.configure(	.parent(this),
			.size(16),
			.lsb_pos(0),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
endfunction
endclass

import uvm_pkg::*;
class STAT_DROP extends uvm_reg;
	`uvm_object_utils(STAT_DROP)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field DROPPED_PACKETS;
function new(string name="STAT_DROP");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(16),
			.lsb_pos(16),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
DROPPED_PACKETS=uvm_reg_field::type_id::create("DROPPED_PACKETS");
DROPPED_PACKETS.configure(	.parent(this),
			.size(16),
			.lsb_pos(0),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class SWITCH_CTRL extends uvm_reg;
	`uvm_object_utils(SWITCH_CTRL)
	rand uvm_reg_field RESERVED_1;
	rand uvm_reg_field IRQ_GLOBAL_EN;
	rand uvm_reg_field RESERVED_2;
	rand uvm_reg_field STAT_CLEAR;
	rand uvm_reg_field ENABLE;
function new(string name="SWITCH_CTRL");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
  RESERVED_1=uvm_reg_field::type_id::create("RESERVED_1");
RESERVED_1.configure(	.parent(this),
			.size(28),
			.lsb_pos(4),
                     .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
IRQ_GLOBAL_EN=uvm_reg_field::type_id::create("IRQ_GLOBAL_EN");
IRQ_GLOBAL_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(3),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
  RESERVED_2=uvm_reg_field::type_id::create("RESERVED_2");
RESERVED_2.configure(	.parent(this),
			.size(1),
			.lsb_pos(2),
                     .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
STAT_CLEAR=uvm_reg_field::type_id::create("STAT_CLEAR");
STAT_CLEAR.configure(	.parent(this),
			.size(1),
			.lsb_pos(1),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
ENABLE=uvm_reg_field::type_id::create("ENABLE");
ENABLE.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));

endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class PORT_ENABLE extends uvm_reg;
	`uvm_object_utils(PORT_ENABLE)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field PORT3_EN;
	rand uvm_reg_field PORT2_EN;
	rand uvm_reg_field PORT1_EN;
	rand uvm_reg_field PORT0_EN;
function new(string name="PORT_ENABLE");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(28),
			.lsb_pos(4),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));

PORT3_EN=uvm_reg_field::type_id::create("PORT3_EN");
PORT3_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(3),
			.access("RW"),
			.volatile(0),
			.reset('h1),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
PORT2_EN=uvm_reg_field::type_id::create("PORT2_EN");
PORT2_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(2),
			.access("RW"),
			.volatile(0),
			.reset('h1),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
PORT1_EN=uvm_reg_field::type_id::create("PORT1_EN");
PORT1_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(1),
			.access("RW"),
			.volatile(0),
			.reset('h1),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
PORT0_EN=uvm_reg_field::type_id::create("PORT0_EN");
PORT0_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
			.access("RW"),
			.volatile(0),
			.reset('h1),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
endfunction
endclass


`include "uvm_macros.svh"
import uvm_pkg::*;
class FWD_ENABLE extends uvm_reg;
	`uvm_object_utils(FWD_ENABLE)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field FWD3_EN;
	rand uvm_reg_field FWD2_EN;
	rand uvm_reg_field FWD1_EN;
	rand uvm_reg_field FWD0_EN;
function new(string name="FWD_ENABLE");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(28),
			.lsb_pos(4),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));

FWD3_EN=uvm_reg_field::type_id::create("FWD3_EN");
FWD3_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(3),
			.access("RW"),
			.volatile(0),
			.reset('h1),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
FWD2_EN=uvm_reg_field::type_id::create("FWD2_EN");
FWD2_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(2),
			.access("RW"),
			.volatile(0),
			.reset('h1),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
FWD1_EN=uvm_reg_field::type_id::create("FWD1_EN");
FWD1_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(1),
			.access("RW"),
			.volatile(0),
			.reset('h1),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
FWD0_EN=uvm_reg_field::type_id::create("FWD0_EN");
FWD0_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
			.access("RW"),
			.volatile(0),
			.reset('h1),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class GEN_CTRL extends uvm_reg;
	`uvm_object_utils(GEN_CTRL)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field CONTINUOUS;
	rand uvm_reg_field STOP;
	rand uvm_reg_field START;
	rand uvm_reg_field ENABLE;
function new(string name="GEN_CTRL");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(28),
			.lsb_pos(4),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));

CONTINUOUS=uvm_reg_field::type_id::create("CONTINUOUS");
CONTINUOUS.configure(	.parent(this),
			.size(1),
			.lsb_pos(3),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
STOP=uvm_reg_field::type_id::create("STOP");
STOP.configure(	.parent(this),
			.size(1),
			.lsb_pos(2),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
START=uvm_reg_field::type_id::create("START");
START.configure(	.parent(this),
			.size(1),
			.lsb_pos(1),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
ENABLE=uvm_reg_field::type_id::create("ENABLE");
ENABLE.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class GEN_PKT_CFG extends uvm_reg;
	`uvm_object_utils(GEN_PKT_CFG)
	rand uvm_reg_field RESERVED_1;
	rand uvm_reg_field SEED;
	rand uvm_reg_field LENGTH;
	rand uvm_reg_field RESERVED_2;
	rand uvm_reg_field SRC_PORT;
	rand uvm_reg_field DST_PORT;
function new(string name="GEN_PKT_CFG");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
  RESERVED_1=uvm_reg_field::type_id::create("RESERVED_1");
RESERVED_1.configure(	.parent(this),
			.size(8),
			.lsb_pos(24),
                     .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));

SEED=uvm_reg_field::type_id::create("SEED");
SEED.configure(	.parent(this),
			.size(8),
			.lsb_pos(16),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
LENGTH=uvm_reg_field::type_id::create("LENGTH");
LENGTH.configure(	.parent(this),
			.size(8),
			.lsb_pos(8),
			.access("RW"),
			.volatile(0),
			.reset('h4),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
  RESERVED_2=uvm_reg_field::type_id::create("RESERVED_2");
RESERVED_2.configure(	.parent(this),
			.size(4),
			.lsb_pos(4),
                     .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
SRC_PORT=uvm_reg_field::type_id::create("SRC_PORT");
SRC_PORT.configure(	.parent(this),
			.size(2),
			.lsb_pos(2),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
DST_PORT=uvm_reg_field::type_id::create("DST_PORT");
DST_PORT.configure(	.parent(this),
			.size(2),
			.lsb_pos(0),
			.access("RW"),
			.volatile(0),
			.reset('h1),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
endfunction
endclass

import uvm_pkg::*;
class GEN_INTERVAL extends uvm_reg;
	`uvm_object_utils(GEN_INTERVAL)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field INTERVAL;
function new(string name="GEN_INTERVAL");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(16),
			.lsb_pos(16),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
INTERVAL=uvm_reg_field::type_id::create("INTERVAL");
INTERVAL.configure(	.parent(this),
			.size(16),
			.lsb_pos(0),
			.access("RW"),
			.volatile(0),
			.reset('h2),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class GEN_COUNT extends uvm_reg;
	`uvm_object_utils(GEN_COUNT)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field PACKET_COUNT;
function new(string name="GEN_COUNT");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(16),
			.lsb_pos(16),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
PACKET_COUNT=uvm_reg_field::type_id::create("PACKET_COUNT");
PACKET_COUNT.configure(	.parent(this),
			.size(16),
			.lsb_pos(0),
			.access("RW"),
			.volatile(0),
			.reset('h4),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class IRQ_STATUS extends uvm_reg;
	`uvm_object_utils(IRQ_STATUS)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field SW_EVENT;
	rand uvm_reg_field START_ACK;
	rand uvm_reg_field QUEUE_ALMOST_FULL;
	rand uvm_reg_field PACKET_FORWARDED;
	rand uvm_reg_field PACKET_DROPPED;
	rand uvm_reg_field QUEUE_OVERFLOW;
	rand uvm_reg_field ERROR;
	rand uvm_reg_field GEN_DONE;
function new(string name="IRQ_STATUS");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(24),
			.lsb_pos(8),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
SW_EVENT=uvm_reg_field::type_id::create("SW_EVENT");
SW_EVENT.configure(	.parent(this),
			.size(1),
			.lsb_pos(7),
                   .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
START_ACK=uvm_reg_field::type_id::create("START_ACK");
START_ACK.configure(	.parent(this),
			.size(1),
			.lsb_pos(6),
                    .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
QUEUE_ALMOST_FULL=uvm_reg_field::type_id::create("QUEUE_ALMOST_FULL");
QUEUE_ALMOST_FULL.configure(	.parent(this),
			.size(1),
			.lsb_pos(5),
                            .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
PACKET_FORWARDED=uvm_reg_field::type_id::create("PACKET_FORWARDED");
PACKET_FORWARDED.configure(	.parent(this),
			.size(1),
			.lsb_pos(4),
                           .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
PACKET_DROPPED=uvm_reg_field::type_id::create("PACKET_DROPPED");
PACKET_DROPPED.configure(	.parent(this),
			.size(1),
			.lsb_pos(3),
                         .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
QUEUE_OVERFLOW=uvm_reg_field::type_id::create("QUEUE_OVERFLOW");
QUEUE_OVERFLOW.configure(	.parent(this),
			.size(1),
			.lsb_pos(2),
                         .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
ERROR=uvm_reg_field::type_id::create("ERROR");
ERROR.configure(	.parent(this),
			.size(1),
			.lsb_pos(1),
                .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));

GEN_DONE=uvm_reg_field::type_id::create("GEN_DONE");
GEN_DONE.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
                   .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class IRQ_ENABLE extends uvm_reg;
	`uvm_object_utils(IRQ_ENABLE)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field SW_EVENT_EN;
	rand uvm_reg_field START_ACK_EN;
	rand uvm_reg_field QUEUE_AF_EN;
	rand uvm_reg_field PACKET_FWD_EN;
	rand uvm_reg_field PACKET_DROP_EN;
	rand uvm_reg_field OVERFLOW_EN;
	rand uvm_reg_field ERROR_EN;
	rand uvm_reg_field GEN_DONE_EN;
function new(string name="IRQ_ENABLE");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(24),
			.lsb_pos(8),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
SW_EVENT_EN=uvm_reg_field::type_id::create("SW_EVENT_EN");
SW_EVENT_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(7),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
START_ACK_EN=uvm_reg_field::type_id::create("START_ACK_EN");
START_ACK_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(6),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
QUEUE_AF_EN=uvm_reg_field::type_id::create("QUEUE_AF_EN");
QUEUE_AF_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(5),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
PACKET_FWD_EN=uvm_reg_field::type_id::create("PACKET_FWD_EN");
PACKET_FWD_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(4),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
PACKET_DROP_EN=uvm_reg_field::type_id::create("PACKET_DROP_EN");
PACKET_DROP_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(3),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
OVERFLOW_EN=uvm_reg_field::type_id::create("OVERFLOW_EN");
OVERFLOW_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(2),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
ERROR_EN=uvm_reg_field::type_id::create("ERROR_EN");
ERROR_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(1),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));

GEN_DONE_EN=uvm_reg_field::type_id::create("GEN_DONE_EN");
GEN_DONE_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class IRQ_FORCE extends uvm_reg;
	`uvm_object_utils(IRQ_FORCE)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field FORCE;
function new(string name="IRQ_FORCE");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(24),
			.lsb_pos(8),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
FORCE=uvm_reg_field::type_id::create("FORCE");
FORCE.configure(	.parent(this),
			.size(8),
			.lsb_pos(0),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
endfunction
endclass

import uvm_pkg::*;
class ERR_STATUS extends uvm_reg;
	`uvm_object_utils(ERR_STATUS)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field INJECTED;
	rand uvm_reg_field LENGTH_ERROR;
	rand uvm_reg_field CRC_ERROR;
	rand uvm_reg_field PROTOCOL_ERROR;
	rand uvm_reg_field UNDERSIZE;
	rand uvm_reg_field QUEUE_OVERFLOW;
	rand uvm_reg_field DEST_ERROR;
	rand uvm_reg_field BUS_ERROR;
function new(string name="ERR_STATUS");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(24),
			.lsb_pos(8),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
INJECTED=uvm_reg_field::type_id::create("INJECTED");
INJECTED.configure(	.parent(this),
			.size(1),
			.lsb_pos(7),
                   .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
LENGTH_ERROR=uvm_reg_field::type_id::create("LENGTH_ERROR");
LENGTH_ERROR.configure(	.parent(this),
			.size(1),
			.lsb_pos(6),
                       .access("RW"),
			.volatile(0),
			.reset(4'h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
CRC_ERROR=uvm_reg_field::type_id::create("CRC_ERROR");
CRC_ERROR.configure(	.parent(this),
			.size(1),
			.lsb_pos(5),
                    .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
PROTOCOL_ERROR=uvm_reg_field::type_id::create("PROTOCOL_ERROR");
PROTOCOL_ERROR.configure(	.parent(this),
			.size(1),
			.lsb_pos(4),
                         .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
UNDERSIZE=uvm_reg_field::type_id::create("UNDERSIZE");
UNDERSIZE.configure(	.parent(this),
			.size(1),
			.lsb_pos(3),
                    .access("RW"),
			.volatile(0),
			.reset(4'h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
QUEUE_OVERFLOW=uvm_reg_field::type_id::create("QUEUE_OVERFLOW");
QUEUE_OVERFLOW.configure(	.parent(this),
			.size(1),
			.lsb_pos(2),
                         .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
DEST_ERROR=uvm_reg_field::type_id::create("DEST_ERROR");
DEST_ERROR.configure(	.parent(this),
			.size(1),
			.lsb_pos(1),
                     .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));

BUS_ERROR=uvm_reg_field::type_id::create("BUS_ERROR");
BUS_ERROR.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
                    .access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class ERR_ENABLE extends uvm_reg;
	`uvm_object_utils(ERR_ENABLE)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field INJECTED_EN;
	rand uvm_reg_field LENGTH_EN;
	rand uvm_reg_field CRC_EN;
	rand uvm_reg_field PROTOCOL_EN;
	rand uvm_reg_field UNDERSIZE_EN;
	rand uvm_reg_field OVERFLOW_EN;
	rand uvm_reg_field DEST_EN;
	rand uvm_reg_field BUS_EN;
function new(string name="ERR_ENABLE");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(24),
			.lsb_pos(8),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
INJECTED_EN=uvm_reg_field::type_id::create("INJECTED_EN");
INJECTED_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(7),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
LENGTH_EN=uvm_reg_field::type_id::create("LENGTH_EN");
LENGTH_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(6),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
CRC_EN=uvm_reg_field::type_id::create("CRC_EN");
CRC_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(5),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
PROTOCOL_EN=uvm_reg_field::type_id::create("PROTOCOL_EN");
PROTOCOL_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(4),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
UNDERSIZE_EN=uvm_reg_field::type_id::create("UNDERSIZE_EN");
UNDERSIZE_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(3),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
OVERFLOW_EN=uvm_reg_field::type_id::create("OVERFLOW_EN");
OVERFLOW_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(2),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
DEST_EN=uvm_reg_field::type_id::create("DEST_EN");
DEST_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(1),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));

BUS_EN=uvm_reg_field::type_id::create("BUS_EN");
BUS_EN.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
			.access("RW"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
endfunction
endclass


`include "uvm_macros.svh"
import uvm_pkg::*;
class ERR_INJECT extends uvm_reg;
	`uvm_object_utils(ERR_INJECT)
	rand uvm_reg_field CLEAR_COUNT;
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field INJECTED;
	rand uvm_reg_field LENGTH;
	rand uvm_reg_field CRC;
	rand uvm_reg_field PROTOCOL;
	rand uvm_reg_field UNDERSIZE;
	rand uvm_reg_field OVERFLOW;
	rand uvm_reg_field DEST;
	rand uvm_reg_field BUS;
function new(string name="ERR_INJECT");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
CLEAR_COUNT=uvm_reg_field::type_id::create("CLEAR_COUNT");
CLEAR_COUNT.configure(	.parent(this),
			.size(1),
			.lsb_pos(31),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));

RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(23),
			.lsb_pos(8),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
INJECTED=uvm_reg_field::type_id::create("INJECTED");
INJECTED.configure(	.parent(this),
			.size(1),
			.lsb_pos(7),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
LENGTH=uvm_reg_field::type_id::create("LENGTH");
LENGTH.configure(	.parent(this),
			.size(1),
			.lsb_pos(6),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
CRC=uvm_reg_field::type_id::create("CRC");
CRC.configure(	.parent(this),
			.size(1),
			.lsb_pos(5),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
PROTOCOL=uvm_reg_field::type_id::create("PROTOCOL");
PROTOCOL.configure(	.parent(this),
			.size(1),
			.lsb_pos(4),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
UNDERSIZE=uvm_reg_field::type_id::create("UNDERSIZE");
UNDERSIZE.configure(	.parent(this),
			.size(1),
			.lsb_pos(3),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
OVERFLOW=uvm_reg_field::type_id::create("OVERFLOW");
OVERFLOW.configure(	.parent(this),
			.size(1),
			.lsb_pos(2),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
DEST=uvm_reg_field::type_id::create("DEST");
DEST.configure(	.parent(this),
			.size(1),
			.lsb_pos(1),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));

BUS=uvm_reg_field::type_id::create("BUS");
BUS.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class ERR_COUNT extends uvm_reg;
	`uvm_object_utils(ERR_COUNT)
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field ERROR_COUNT;
function new(string name="ERR_COUNT");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(16),
			.lsb_pos(16),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
ERROR_COUNT=uvm_reg_field::type_id::create("ERROR_COUNT");
ERROR_COUNT.configure(	.parent(this),
			.size(16),
			.lsb_pos(0),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class ERR_INFO extends uvm_reg;
	`uvm_object_utils(ERR_INFO)
	rand uvm_reg_field TX_SNAPSHOT;
	rand uvm_reg_field RESERVED;
	rand uvm_reg_field DEST_PORT;
	rand uvm_reg_field SOURCE;
	rand uvm_reg_field LAST_CODE;
function new(string name="ERR_INFO");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
TX_SNAPSHOT=uvm_reg_field::type_id::create("TX_SNAPSHOT");
TX_SNAPSHOT.configure(	.parent(this),
			.size(12),
			.lsb_pos(20),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));

RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(2),
			.lsb_pos(18),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
DEST_PORT=uvm_reg_field::type_id::create("DEST_PORT");
DEST_PORT.configure(	.parent(this),
			.size(2),
			.lsb_pos(16),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
SOURCE=uvm_reg_field::type_id::create("SOURCE");
SOURCE.configure(	.parent(this),
			.size(8),
			.lsb_pos(8),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
LAST_CODE=uvm_reg_field::type_id::create("LAST_CODE");
LAST_CODE.configure(	.parent(this),
			.size(8),
			.lsb_pos(0),
			.access("RO"),
			.volatile(1),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class LOCK extends uvm_reg;
	`uvm_object_utils(LOCK)
	rand uvm_reg_field LOCKED;
	rand uvm_reg_field RESERVED;
function new(string name="LOCK");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
LOCKED=uvm_reg_field::type_id::create("LOCKED");
LOCKED.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
			.access("RO"),
			.volatile(0),
			.reset('h1),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));

RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(31),
			.lsb_pos(1),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));
endfunction
endclass

`include "uvm_macros.svh"
import uvm_pkg::*;
class SOFT_RESET extends uvm_reg;
	`uvm_object_utils(SOFT_RESET)
	rand uvm_reg_field PULSE;
	rand uvm_reg_field RESERVED;
function new(string name="SOFT_RESET");
	super.new(name,32,UVM_NO_COVERAGE);
endfunction

function void build;
PULSE=uvm_reg_field::type_id::create("PULSE");
PULSE.configure(	.parent(this),
			.size(1),
			.lsb_pos(0),
			.access("WO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(1),
			.individually_accessible(1));

RESERVED=uvm_reg_field::type_id::create("RESERVED");
RESERVED.configure(	.parent(this),
			.size(31),
			.lsb_pos(1),
                   .access("RO"),
			.volatile(0),
			.reset('h0),
			.has_reset(1),
			.is_rand(0),
			.individually_accessible(1));
endfunction
endclass
