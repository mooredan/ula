
SHELL = /bin/bash

# make -C ps
# make -C mag
# make -C lvs


all :
	$(MAKE) -C lef 
	$(MAKE) -C char


.PHONY: clean
clean :
	make -C ps $@
	make -C mag $@
	make -C lvs $@
