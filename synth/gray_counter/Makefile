#
SHELL = /bin/bash

DESIGN = $(shell basename `/bin/pwd`)


$(DESIGN).mapped.v : synth.tcl ${PROJECT_DIR}/rtl/$(DESIGN).v \
                     ${PROJECT_DIR}/char/amic5n_stdcells.lib
	@ rm -f $(DESIGN).mapped.v
	yosys -c synth.tcl -l yosys.log




.PRECIOUS : info
info :
	@ echo DESIGN : $(DESIGN)


.PRECIOUS : clean
clean :
	@ rm -f $(DESIGN).mapped.v
	@ rm -f yosys.log
