set process "amic5n"
read_lef ${process}/${process}_tech.lef
read_lef ${process}/${process}_std_cell.lef
read_liberty ${process}/${process}_tt.lib
read_verilog simple.v
link_design simple

initialize_floorplan -site {core} \
  -die_area  "0.0 0.0 15.0 14.4" \
  -core_area "0.0 0.0 15.0 14.4"

make_tracks

# auto_place_pins metal2

place_pin -pin_name {a} -layer metal1 -location {0.75 6.4} -pin_size {1.5 0.9}
place_pin -pin_name {z} -layer metal1 -location {14.25 6.4} -pin_size {1.5 0.9}


# global_placement -verbose 3
global_placement
# # macro_placement -snap_layer 1
detailed_placement
check_placement -verbose
write_def placed.def
global_route
write_def grouted.def
detailed_route -verbose 1
write_def routed.def
