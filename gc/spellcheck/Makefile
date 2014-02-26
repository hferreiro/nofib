TOP = ../..

include $(TOP)/mk/boilerplate.mk

all boot :: input

input : words
	cat words words words words words words words words words words >$@

SRC_HC_OPTS += -package containers
NORM_OPTS = words input

include $(TOP)/mk/target.mk
