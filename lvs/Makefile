
-include ../cells.mk

VERIFY ?= 0

LOGS := $(addsuffix .log,$(addsuffix .comp,$(CELLS)))
PASSES := $(addsuffix .PASS,$(CELLS))


../mag/%.sp :
	make -C ../mag $*.sp


../ps/%.sp :
	make -C ../ps $*.ps

.PRECIOUS : %.comp.log
%.comp.log : ../mag/%.sp ../ps/%.sp setup.lvs.tcl
	@ rm -f $@ $*.PASS $*.netgen.log $*.comp.fail.log PASS
	make -C ../mag $*.sp
	make -C ../ps $*.sp
	@ TCL_FILE=`mktemp --tmpdir=/tmp XXXXX.tcl`; \
	echo INFO: TCL_FILE: $${TCL_FILE}; \
	echo set CELL $* >> $${TCL_FILE}; \
	echo set layout_netlist [format \"../mag/%s.sp\" \$$CELL] >> $${TCL_FILE}; \
	echo set schematic_netlist [format \"../ps/%s.sp\" \$$CELL] >> $${TCL_FILE}; \
	echo set layout [list \$$layout_netlist \$$CELL] >> $${TCL_FILE}; \
	echo set schematic [list \$$schematic_netlist \$$CELL] >> $${TCL_FILE}; \
	echo set logfile [format \"%s.comp.log\" \$$CELL] >> $${TCL_FILE}; \
	echo lvs \$$layout \$$schematic setup.lvs.tcl \$$logfile >> $${TCL_FILE}; \
	echo verify >> $${TCL_FILE}; \
	netgen -batch source $${TCL_FILE} > $*.netgen.log 2>&1


%.PASS : %.comp.log
	@ cat $<
	@ CIRCUIT_PASS=`grep -c -e 'Circuits match uniquely.' $<`; \
	NETLIST_PASS=`grep -c -e 'Netlists match uniquely.' $<`; \
	PIN_PASS=`grep -c -e 'Cell pin lists are equivalent.' $<`; \
	NO_MATCH=`grep -c -e 'Netlists do not match.' $<`; \
	MISMATCH=`grep -c -e '\*\*Mismatch\*\*' $<`; \
	PROP_ERR=`grep -c -e 'Property errors were found.' $<`; \
	if [[ $${CIRCUIT_PASS} -eq 0 || \
              $${NETLIST_PASS} -eq 0 || \
              $${PIN_PASS} -eq 0 || \
              $${NO_MATCH} -ne 0 || \
              $${MISMATCH} -ne 0 || \
              $${PROP_ERR} -ne 0 ]]; then \
	   mv $*.comp.log $*.comp.fail.log; \
	   false;\
	else \
	   touch $@; \
	fi


all : layout schematic PASS

.PHONY: layout
layout :
	make -C ../mag

.PHONY: schematic
schematic :
	make -C ../ps

PASS : $(PASSES)
	@ touch $@
	

.PHONY: clean
clean :
	- @ rm -f *.log $(LOGS)
	- @ rm -f *.PASS $(PASSES)
	- @ rm -f PASS


.PHONY: info
info :
	@ echo CELLS: $(CELLS)
	@ echo CELLS_CIR: $(CELLS_CIR)
	@ echo CELLS_SP: $(CELLS_SP)
	@ echo LOGS: $(LOGS)

