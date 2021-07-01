set process "amic5n"
read_lef ${process}/${process}_tech.lef
read_lef ${process}/${process}_std_cell.lef
read_liberty ${process}/${process}_tt.lib
read_verilog simple.v
link_design simple
initialize_floorplan -utilization 60 -site core
make_tracks
auto_place_pins metal2




# global_placement -verbose 3
global_placement


# # macro_placement -snap_layer 1

detailed_placement
check_placement -verbose

write_def placed.def


# global_route
# detailed_route -verbose 1
# write_def routed.def
