#
set PROJECT_DIR $::env(PROJECT_DIR)
puts $PROJECT_DIR

set DESIGN gray_counter

set LIB ${PROJECT_DIR}/char/dlm05_stdcells.lib

yosys -import
# Synthesis script for yosys created by qflow
# read_liberty -lib -ignore_miss_dir -setattr blackbox /usr/local/share/qflow/tech/osu035/osu035_stdcells.lib
read_liberty -lib -ignore_miss_dir -setattr blackbox ${LIB}

read_verilog  $PROJECT_DIR/rtl/${DESIGN}.v

# High-level synthesis
synth -top ${DESIGN}
# Map register flops
dfflibmap -liberty ${LIB}
opt

# Map combinatorial cells, standard script
abc -exe /usr/local/share/qflow/bin/yosys-abc -liberty ${LIB} -script {+strash;scorr;ifraig;retime,{D};strash;dch,-f;map,-M,1,\{D\}}
flatten
setundef -zero

clean -purge
# Output buffering
# iopadmap -outpad BUFX2 A:Y -bits

# Cleanup
opt
clean
yosys rename -enumerate
write_verilog  ${DESIGN}.mapped.v
stat
