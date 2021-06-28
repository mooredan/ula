#
SHELL = /bin/bash
FIND := $(shell which find)

include ../cells.mk
# CELLS := $(shell $(FIND) * -mindepth 0 -maxdepth 0 -type d -prune -not -regex common \! -exec test -e '{}/BYPASS' \; -print)
# CELLS := $(shell $(FIND) * -mindepth 0 -maxdepth 0 -type d -exec test -e '{}/Makefile' \; -print)

STDCELL_LIBS := $(addsuffix /cell.lib,$(STDCELLS))
STDCELLS_CLEAN := $(patsubst %,%.clean,$(STDCELLS))

LIBNAME := amic5n_tt.lib


%/cell.lib :
	+ $(MAKE) -C $(subst /cell.lib,,$@) -f ../Makefile.char


all : cells $(LIBNAME)


$(LIBNAME) : $(CELL_LIBS) templates/lib_header.txt
	@ cat templates/lib_header.txt > $@
	@ gather_tables >> $@
	@ echo "" >> $@
	@ for i in $(CELL_LIBS); do\
	   cat $${i} >> $@;\
	   echo "" >> $@;\
	done
	@ echo "} /* end of library */" >> $@



.PHONY: cells $(STDCELLS)
cells: $(STDCELLS)

$(STDCELLS):
	@ if [[ ! -d $@ ]]; then mkdir $@; fi
	@ $(MAKE) -C $@ -f ../Makefile.char


.PHONY: $(STDCELLS_CLEAN)
$(STDCELLS_CLEAN):
	- @ $(MAKE) -C $(@:.clean=) -f ../Makefile.char clean


.PHONY: clean
clean : $(STDCELLS_CLEAN)
	-@ rm -f $(LIBNAME)



.PHONY: info
info :
	@ echo STDCELLS: $(STDCELLS)
	@ echo STDCELL_LIBS: $(STDCELL_LIBS)
	@ echo STDCELLS_CLEAN: $(STDCELLS_CLEAN)

