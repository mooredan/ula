# if {[info exists ::env(PROCESS)]} {
#    set process $::env(PROCESS)
# } else {
#     puts [format "ERROR: Environment variable: PROCESS is not set"]
#     quit
# }
# 
# if {[info exists ::env(PROJECT_DIR)]} {
#    set PROJECT_DIR $::env(PROJECT_DIR)
#    if {! [file isdirectory ${PROJECT_DIR}]} {
#        puts [format "ERROR: PROJECT_DIR %s is not a directory" ${PROJECT_DIR}]
#        quit
#    }
# } else {
#     puts [format "ERROR: Environment variable: PROJECT_DIR is not set"]
#     quit
# }
# 
# 
# read_lef ${PROJECT_DIR}/lef/${process}_tech.lef
# read_lef ${PROJECT_DIR}/lef/${process}_std_cell.lef
# read_liberty ${PROJECT_DIR}/char/${process}_tt.lib

set process amic5n
set platform ${process}

read_lef ${process}/${process}_tech.lef
read_lef ${process}/${process}_std_cell.lef
read_liberty ${process}/${process}_tt.lib

set design gray_counter

read_verilog ${design}.mapped.v
link_design ${design}

# timing constraints
read_sdc constraints.sdc

set top_margin 0.0
set right_margin 0.0 
set left_margin 0.0

set core_rows 9
# set core_width_tracks [expr 7 * 10.0]
set core_width_tracks [expr ${core_rows} * 10.0]

set core_llx  ${left_margin}
set core_lly  0.0
set core_width [expr ${core_width_tracks} * 1.5]
set core_urx [expr ${core_llx} + ${core_width}]
set core_ury [expr ${core_lly} + ${core_rows} * 14.4]

set die_llx 0.0
set die_lly 0.0
set die_urx [expr ${core_urx} + ${right_margin}]
set die_ury [expr ${core_ury} + ${top_margin}]


puts [format "core_llx %.3f core_lly %.3f core_urx %.3f core_ury %.3f" \
  ${core_llx} ${core_lly} ${core_urx} ${core_ury}]

puts [format "die_llx %.3f die_lly %.3f die_urx %.3f die_ury %.3f" \
  ${die_llx} ${die_lly} ${die_urx} ${die_ury}]

initialize_floorplan -site {core} \
  -die_area  "${die_llx} ${die_lly} ${die_urx} ${die_ury}" \
  -core_area "${core_llx} ${core_lly} ${core_urx} ${core_ury}"

# make_tracks


make_tracks metal1 -x_offset 0.0  -x_pitch 1.5  -y_offset 0.0 -y_pitch 1.5
make_tracks metal2 -x_offset 0.0  -x_pitch 1.6  -y_offset 0.0 -y_pitch 1.6
make_tracks metal3 -x_offset 0.0  -x_pitch 1.6  -y_offset 0.0 -y_pitch 1.6


################################################################
# IO Placement
################################################################
set x [expr ${die_llx} + 1.2]
set y 6.4
place_pin -pin_name {clk}  -layer metal2 -location [list $x $y] -pin_size {2.4 0.9}

for {set i 0} {${i} <= 7} {incr i} {

   set x [expr ${die_urx} - 1.2]
   set y [expr (${i} * 14.4) + 6.4]
   set pinname [format "Q\[%d\]" $i]
   place_pin -pin_name ${pinname} -layer metal2 -location [list $x $y] -pin_size {2.4 0.9}
}


################################################################
# Tapcell insertion
################################################################
# tapcell -distance 48 -tapcell_master nwsx -endcap_master nwsx
tapcell -tapcell_master nwsx -distance 60 -endcap_master nwsx


################################################################
# Power distribution network insertion
################################################################
pdngen -verbose ${process}.pdn
# write_def pdn.def


################################################################
# Global placement
################################################################
# Used by resizer for timing driven placement.
# source $layer_rc_file
set_layer_rc -via via1 -resistance 1.0
set_layer_rc -via via2 -resistance 1.0
set_wire_rc -signal -layer "metal2"
set_wire_rc -clock  -layer "metal2"

# global_placement -verbose 3
global_placement -density 0.90


# checkpoint
write_def "global_place.def"

################################################################
# Repair max slew/cap/fanout violations and normalize slews
estimate_parasitics -placement
repair_design



detailed_placement

# post resize timing report (ideal clocks)
report_worst_slack -min -digits 3
report_worst_slack -max -digits 3
report_tns -digits 3
# Check slew repair
report_check_types -max_slew -max_capacitance -max_fanout -violators



################################################################
# Clock Tree Synthesis

# Clone clock tree inverters next to register loads
# so cts does not try to buffer the inverted clocks.
##### repair_clock_inverters

clock_tree_synthesis -root_buf "buf_c" -buf_list "buf_c" -sink_clustering_enable

# exit

# CTS leaves a long wire from the pad to the clock tree root.
repair_clock_nets

# checkpoint
# set cts_def [make_result_file ${design}_${platform}_cts.def]
# write_def $cts_def

################################################################
# Setup/hold timing repair

estimate_parasitics -placement
set_propagated_clock [all_clocks]
repair_timing

# Post timing repair using placement based parasitics.
report_worst_slack -min -digits 3
report_worst_slack -max -digits 3
report_tns -digits 3

detailed_placement
# Capture utilization before fillers make it 100%
utl::metric "utilization" [format %.1f [expr [rsz::utilization] * 100]]
utl::metric "design_area" [sta::format_area [rsz::design_area] 0]
set filler_cells "decap8 decap7 decap6 decap5 decap4 decap3 fill2 fill1"
filler_placement ${filler_cells}
set dpl_errors [check_placement -verbose]
utl::metric "DPL::errors" $dpl_errors



################################################################
# Global routing
puts {Starting global routing....}
# set route_guide [make_result_file ${design}_${platform}.route_guide]
set route_guide "route_guide.txt"

set global_routing_layers metal1-metal3
set global_routing_clock_layers metal2-metal3
set global_routing_layer_adjustments {}

foreach layer_adjustment $global_routing_layer_adjustments {
  lassign $layer_adjustment layer adjustment
  set_global_routing_layer_adjustment $layer $adjustment
}

set_routing_layers -signal $global_routing_layers \
  -clock $global_routing_clock_layers


global_route -guide_file $route_guide \
  -overflow_iterations 100 \
  -verbose 2

# set antenna_report [make_result_file ${design}_${platform}_ant.log]
set antenna_report "antenna.rpt"
# set antenna_errors [check_antennas -simple_report -report_file $antenna_report]
check_antennas -report_file $antenna_report

# utl::metric "ANT::errors" $antenna_errors

#if { $antenna_errors > 0 } {
#  fail "found $antenna_errors antenna violations"
#}

# set verilog_file [make_result_file ${design}_${platform}.v]
write_verilog  "routed.v"

# set routed_def [make_result_file ${design}_${platform}_globalroute.def]
# write_def $routed_def
write_def global_route.def



################################################################
# Detailed routing
puts {Starting detailed routing...}
set_thread_count [exec getconf _NPROCESSORS_ONLN]
detailed_route -guide $route_guide \
               -output_guide "output_guide.mod" \
               -output_drc "route_drc.rpt" \
               -output_maze "maze.log" \
               -verbose 1

set drv_count [detailed_route_num_drvs]
utl::metric "DRT::drv" $drv_count

set routed_def "routed.def"
write_def $routed_def


################################################################
# Extraction
set rcx_rules_file ""
if { $rcx_rules_file != "" } {
  define_process_corner -ext_model_index 0 X
  extract_parasitics -ext_model_file $rcx_rules_file

  set spef_file [make_result_file ${design}_${platform}.spef]
  write_spef $spef_file

  read_spef $spef_file
} else {
  # Use global routing based parasitics inlieu of rc extraction
  estimate_parasitics -global_routing
}

################################################################
# Final Report

report_checks -path_delay min_max -format full_clock_expanded \
  -fields {input_pin slew capacitance} -digits 3
report_worst_slack -min -digits 3
report_worst_slack -max -digits 3
report_tns -digits 3
report_check_types -max_slew -max_capacitance -max_fanout -violators -digits 3
report_clock_skew -digits 3
# report_power -corner $power_corner

report_floating_nets -verbose
report_design_area

utl::metric "worst_slack_min" [sta::worst_slack -min]
utl::metric "worst_slack_max" [sta::worst_slack -max]
utl::metric "tns_max" [sta::total_negative_slack -max]
utl::metric "clock_skew" [sta::worst_clock_skew -setup]
utl::metric "max_slew_violations" [sta::max_slew_violation_count]
utl::metric "max_fanout_violations" [sta::max_fanout_violation_count]
utl::metric "max_capacitance_violations" [sta::max_capacitance_violation_count]
utl::metric "clock_period" [get_property [lindex [all_clocks] 0] period]


exit

# # macro_placement -snap_layer 1
check_placement -verbose

filler_placement "decap5 fill2 fill1"


write_def placed.def
global_route
write_def grouted.def
detailed_route -verbose 1
write_def routed.def

report_worst_slack -min -digits 3
report_worst_slack -max -digits 3
report_tns -digits 3
report_check_types -max_slew -max_capacitance -max_fanout -violators -digits 3
