


all :
	make -C ps
	make -C mag
	make -C lvs


.PHONY: clean
clean :
	make -C ps $@
	make -C mag $@
	make -C lvs $@
