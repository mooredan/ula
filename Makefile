SHELL = /bin/bash

include cells.mk


all :
	make -C ps
	make -C mag
	make -C lvs

.PHONY: check
check :
	@ for cell in $(STDCELLS); do\
	   check_stdcell_mag -c $${cell};\
	done


.PHONY: clean
clean :
	make -C ps $@
	make -C mag $@
	make -C lvs $@
