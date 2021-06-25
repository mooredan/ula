# gcd flow pipe cleaner
source "helpers.tcl"
source "flow_helpers.tcl"
source "amic5n/amic5n.vars"

set synth_verilog "gc_amic5n.v"
set design "gc"
set top_module "gc"
set sdc_file "gc_amic5n.sdc"
# 120.0 (80 tracks) x 115.2 (8 rows)
set tracks 40
set rows 4

set die_llx  0
set die_lly  0
set die_urx  [expr 2 * 1.5 + $tracks * 1.5] 
set die_ury  [expr 2 * 1.6 + $rows * 14.4] 

set core_llx  [expr $die_llx + 1.5]
set core_lly  [expr $die_lly + 1.6]
set core_urx  [expr $die_urx - 1.5]
set core_ury  [expr $die_ury - 1.6]


set die_area [list $die_llx $die_lly $die_urx $die_ury]
set core_area [list $core_llx $core_lly $core_urx $core_ury]

source -echo "flow.tcl"
