#
SHELL = /bin/bash

include ../cells.mk

STDCELL_PASSES := $(addsuffix /PASS,$(STDCELLS))
STDCELLS_CLEAN := $(patsubst %,%.clean,$(STDCELLS))

%/PASS :
	+ $(MAKE) -C $(subst /PASS,,$@) -f ../Makefile.lvs


all : cells


.PHONY: cells $(STDCELLS)
cells: $(STDCELLS)

$(STDCELLS):
	@ if [[ ! -d $@ ]]; then mkdir $@; fi
	@ $(MAKE) -C $@ -f ../Makefile.lvs


.PHONY: $(STDCELLS_CLEAN)
$(STDCELLS_CLEAN):
	- @ $(MAKE) -C $(@:.clean=) -f ../Makefile.lvs clean


.PHONY: clean
clean : $(STDCELLS_CLEAN)


.PHONY: info
info :
	@ echo STDCELLS: $(STDCELLS)
	@ echo STDCELL_PASSES: $(STDCELL_PASSES)
	@ echo STDCELLS_CLEAN: $(STDCELLS_CLEAN)

