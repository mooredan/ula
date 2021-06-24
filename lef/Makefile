#
SHELL = /bin/bash
FIND := $(shell which find)


include ../cells.mk

LEFS := $(addsuffix .lef, $(STDCELLS))

LIBNAME := amic5n_std_cell.lef


all : $(LIBNAME)


%.lef: ${PROJECT_DIR}/mag/%.mag ${PROJECT_DIR}/verilog/%.v
	check_stdcell_mag -c $*
	mag2lef -c $*


$(LIBNAME) : $(LEFS)
	@ echo "# LEF" > $@
	@ echo "VERSION 5.7 ;" >> $@
	@ echo "BUSBITCHARS \"[]\" ;" >> $@
	@ echo "DIVIDERCHAR  \"/\" ;" >> $@
	@ echo "" >> $@
	@ for lef in $(LEFS); do cat $${lef} >> $@; done
	@ echo "END LIBRARY" >> $@



.PHONY: clean
clean :
	-@ rm -f $(LEFS)
	-@ rm -f $(LIBNAME)



.PHONY: info
info :
	@ echo STDCELLS: $(STDCELLS)
	@ echo LEFS: $(LEFS)
	@ echo CELLS_CLEAN: $(CELLS_CLEAN)

