#
SHELL = /bin/bash
FIND := $(shell which find)


include ../cells.mk

LEFS := $(addsuffix .lef, $(STDCELLS))

LIBNAME := amic5n_stdcells.lef


all : $(LIBNAME)


%.lef: ${PROJECT_DIR}/mag/%.mag ${PROJECT_DIR}/verilog/%.v
	check_stdcell_mag -c $*
	mag2lef -c $*


$(LIBNAME) : $(LEFS) lib_header.txt
	@ echo "# LEF" > $@
	@ cat lib_header.txt >> $@
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

