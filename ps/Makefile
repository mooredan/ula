

# -include ../cells.mk
# CELLS_PS := $(addsuffix .ps,$(CELLS))

CELLS_PS := $(shell /bin/ls *.ps)
CELLS := $(basename $(CELLS_PS))
CELLS_SP := $(addsuffix .sp,$(CELLS))


%.sp : %.ps
	@ echo INFO: netlist $< to $@
	@ rm -f $@ xcircuit.$*.log
	@ TCL_FILE=`mktemp --tmpdir=/tmp XXXXX.tcl`; \
	echo INFO: TCL_FILE: $${TCL_FILE}; \
	echo set CELLNAME $* >> $${TCL_FILE}; \
	echo page load \$ $$CELLNAME >> $${TCL_FILE}; \
	echo netlist write spice sp false >> $${TCL_FILE}; \
	echo quit >> $${TCL_FILE}; \
	xcircuit  -nowindow -noconsole < $${TCL_FILE} > xcircuit.$*.log 2>&1
	@ ERRORS=`grep -c -e 'No netlist' -e 'Starting new drawing' -e 'Netlist error:' xcircuit.$*.log`; \
	if [[ $${ERRORS} -eq 0 ]]; then\
	   rm -f xcircuit.$*.log;\
	fi;\
	if [[ $${ERRORS} -ne 0 ]]; then\
	   rm -f $*.ext $@;\
	   echo ERRORS: $${ERRORS} in xcircuit.$*.log;\
	   false;\
	fi

all : $(CELLS_SP)

.PHONY: clean
clean :
	- @ rm -f ${CELLS_SP}
	- @ rm -f xcircuit.*.log

.PHONY: info
info :
	@ echo CELLS: $(CELLS)
	@ echo CELLS_PS: $(CELLS_PS)
	@ echo CELLS_SP: $(CELLS_SP)


