
all : openroad.log

openroad.log : cmd.tcl $(wildcard *.pdn)
	@ rm -f *.def route.guide $@
	openroad -exit -log openroad.log cmd.tcl

.PHONY: clean
clean :
	@ rm -f *.def
	@ rm -f openroad.log
	@ rm -f route.guide
