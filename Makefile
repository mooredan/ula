SHELL = /bin/bash

include cells.mk

# make -C ps
# make -C mag
# make -C lvs

all :  
	$(MAKE) check
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
	make -C ps $@
	make -C mag $@
	make -C lvs $@
