read_lef ../lef/amic5n_stdcells.lef
read_liberty ../char/amic5n_stdcells.lib
read_verilog gray_counter.v
link_design gray_counter
initialize_floorplan -utilization 75 -site core
write_def floorplan.def
