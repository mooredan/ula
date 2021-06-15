#
SHELL = /bin/bash
FIND := $(shell which find)

# CELLS := $(shell $(FIND) * -mindepth 0 -maxdepth 0 -type d -prune -not -regex common \! -exec test -e '{}/BYPASS' \; -print)
CELLS := $(shell $(FIND) * -mindepth 0 -maxdepth 0 -type d -exec test -e '{}/Makefile' \; -print)

CELL_LIBS := $(addsuffix /cell.lib,$(CELLS))
CELLS_CLEAN := $(patsubst %,%.clean,$(CELLS))

LIBNAME := dlm05_stdcells.lib


all : $(LIBNAME)



%/cell.lib :
	+ $(MAKE) -C $(subst /cell.lib,,$@)



$(LIBNAME) : $(CELL_LIBS) templates/lib_header.txt
	@ cat templates/lib_header.txt > $@;\
	for i in $(CELL_LIBS); do\
	   cat $${i} >> $@;\
	   echo "" >> $@;\
	done;\
	echo "} /* end of library */" >> $@



.PHONY: cells $(CELLS)
cells: $(CELLS)

$(CELLS):
	@ $(MAKE) -C $@



.PHONY: $(CELLS_CLEAN)
$(CELLS_CLEAN):
	- @ $(MAKE) -C $(@:.clean=) clean


.PHONY: clean
clean : $(CELLS_CLEAN)
	-@ rm -f $(LIBNAME)



.PHONY: info
info :
	@ echo CELLS: $(CELLS)
	@ echo CELL_LIBS: $(CELL_LIBS)
	@ echo CELLS_CLEAN: $(CELLS_CLEAN)

