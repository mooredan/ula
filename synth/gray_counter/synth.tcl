yosys -import
# Synthesis script for yosys created by qflow
read_liberty -lib -ignore_miss_dir -setattr blackbox /usr/local/share/qflow/tech/osu035/osu035_stdcells.lib

set PROJECT_DIR $::env(PROJECT_DIR)
puts $PROJECT_DIR

read_verilog  $PROJECT_DIR/rtl/gray_counter.v

# High-level synthesis
synth -top gray_counter
# Map register flops
dfflibmap -liberty /usr/local/share/qflow/tech/osu035/osu035_stdcells.lib
opt

# Map combinatorial cells, standard script
abc -exe /usr/local/share/qflow/bin/yosys-abc -liberty /usr/local/share/qflow/tech/osu035/osu035_stdcells.lib -script {+strash;scorr;ifraig;retime,{D};strash;dch,-f;map,-M,1,\{D\}}
flatten
setundef -zero

clean -purge
# Output buffering
iopadmap -outpad BUFX2 A:Y -bits
# Cleanup
opt
clean
yosys rename -enumerate
write_verilog  gray_counter_mapped.v
stat
