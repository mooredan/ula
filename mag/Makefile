
ALL ?= 0
# all_opt = all
all_opt =

-include ../cells.mk

CELLS_MAG := $(addsuffix .mag,$(CELLS))
CELLS_EXT := $(addsuffix .ext,$(CELLS))
CELLS_CIR := $(addsuffix .cir,$(CELLS))
CELLS_SP  := $(addsuffix .sp,$(CELLS))


.PRECIOUS: %.ext
%.ext : %.mag
	@ echo INFO: extract $< to $@
	mag2ext -c $*


%.cir : %.ext
	@ echo INFO: netlist $< to $@
	ext2cir -c $*


%.sp : %.cir
	@ echo INFO: netlist $< to $@
	@ rm -f $@
	@ sed -e '/phrResistor/s/^M/RM/' \
              -e '/.global Vdd Gnd/d' \
              -e 's/ \(\*\*FLOATING\)/\n\1 (above)/' $< | \
          awk '/phrResistor/ {$$3=$$5=""} 1' > $@


# all : $(CELLS_EXT) $(CELLS_CIR) $(CELLS_SP)
all : $(CELLS_EXT) $(CELLS_CIR)


.PHONY: clean
clean :
	- @ rm -f $(CELLS_EXT)
	- @ rm -f $(CELLS_CIR)
	- @ rm -f $(CELLS_SP)
	- @ rm -f magic.log
	- @ rm -f magic.*.log


.PHONY: info
info :
	@ echo CELLS: $(CELLS)
	@ echo CELLS_MAG: $(CELLS_MAG)
	@ echo CELLS_CIR: $(CELLS_CIR)
	@ echo TCL_FILE: $(TCL_FILE)


