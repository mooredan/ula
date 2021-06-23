SHELL = /bin/bash

include cells.mk

STDCELLS_MAG := $(addprefix mag/,$(addsuffix .mag,$(STDCELLS)))
STDCELLS_EXT := $(addprefix ext/,$(addsuffix .ext,$(STDCELLS)))
STDCELLS_CIR := $(addprefix cir/,$(addsuffix .cir,$(STDCELLS)))
STDCELLS_V   := $(addprefix verilog/,$(addsuffix .v,$(STDCELLS)))
STDCELLS_LEF := $(addprefix lef/,$(addsuffix .lef,$(STDCELLS)))

# make -C ps
# make -C mag
# make -C lvs

ext/%.ext : mag/%.mag
	mag2ext -c $*

cir/%.cir : ext/%.ext
	ext2cir -c $*

lef/%.lef : mag/%.mag verilog/%.v
	mag2lef -c $*



all : check $(STDCELLS_EXT) $(STDCELLS_CIR) $(STDCELLS_LEF)
	$(MAKE) -C lef 
	$(MAKE) -C char


.PHONY: check
check :
	@ error_flag=0;\
	for cell in $(STDCELLS); do\
	   check_stdcell_mag -c $${cell};\
	   if [[ $$? -ne 0 ]]; then\
	      error_flag=1;\
	   fi;\
	done;\
	if [[ $${error_flag} -ne 0 ]]; then\
	   false;\
	fi



.PHONY: clean
clean :
	@ rm -f $(STDCELLS_EXT)
	@ rm -f $(STDCELLS_CIR)


.PHONY: info
info :
	@ echo STDCELLS_MAG: $(STDCELLS_MAG)
	@ echo STDCELLS_EXT: $(STDCELLS_EXT)
	@ echo STDCELLS_CIR: $(STDCELLS_CIR)
