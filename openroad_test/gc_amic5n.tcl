# gcd flow pipe cleaner
source "helpers.tcl"
source "flow_helpers.tcl"
source "amic5n/amic5n.vars"

set synth_verilog "gc_amic5n.v"
set design "gc"
set top_module "gc"
set sdc_file "gc_amic5n.sdc"
# 120.0 (80 tracks) x 115.2 (8 rows)
set tracks 80
set rows 8

set die_area {0 0 123.0 147.2}
set core_area {1.5 1.6 121.5 145.6}

source -echo "flow.tcl"
