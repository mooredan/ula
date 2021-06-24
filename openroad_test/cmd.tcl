read_lef ../lef/amic5n_stdcells.lef
read_liberty ../char/amic5n_stdcells.lib
# read_verilog gray_counter.v
# link_design gray_counter
read_verilog simple.v
link_design simple
initialize_floorplan -utilization 60 -site core
make_tracks
auto_place_pins metal2
global_placement
# macro_placement -snap_layer 1
detailed_placement
check_placement -verbose
write_def placed.def
global_route
detailed_route -verbose 1
write_def routed.def
