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

read_lef ${process}/${process}_tech.lef
read_lef ${process}/${process}_std_cell.lef
read_liberty ${process}/${process}_tt.lib

set DESIGN gray_counter

read_verilog ${DESIGN}.mapped.v
link_design ${DESIGN}

set top_margin 0.0
set right_margin 0.0 
set left_margin 0.0

set core_rows 8
set core_width_tracks [expr 7 * 10.0]

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


# auto_place_pins metal2

set x [expr ${die_llx} + 1.2]
set y 6.4
place_pin -pin_name {clk}  -layer metal2 -location [list $x $y] -pin_size {2.4 0.9}


for {set i 0} {${i} <= 7} {incr i} {

   set x [expr ${die_urx} - 1.2]
   set y [expr (${i} * 14.4) + 6.4]
   set pinname [format "Q\[%d\]" $i]
   place_pin -pin_name ${pinname} -layer metal2 -location [list $x $y] -pin_size {2.4 0.9}
}



# tapcell
# tapcell -distance 48 -tapcell_master nwsx -endcap_master nwsx
tapcell -tapcell_master nwsx -distance 60 -endcap_master nwsx


###############################################################
# Power distribution network insertion
pdngen -verbose ${process}.pdn

write_def pdn.def

# global_placement -verbose 3
global_placement -density 0.90
# # macro_placement -snap_layer 1
detailed_placement
check_placement -verbose

filler_placement "fill2 fill1"


write_def placed.def
global_route
write_def grouted.def
detailed_route -verbose 1
write_def routed.def
