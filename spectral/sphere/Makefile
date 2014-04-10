TOP = ../..
include $(TOP)/mk/boilerplate.mk

FAST_OPTS = 100
NORM_OPTS = 700
SLOW_OPTS = 1200

sphere.fastppm: sphere
	./sphere $(FAST_OPTS) > $@

sphere.ppm: sphere
	./sphere $(NORM_OPTS) > $@

sphere.slowppm: sphere
	./sphere $(SLOW_OPTS) > $@

ifeq "$(mode)" "slow"
STDOUT_FILE = sphere.slowppm
else ifeq "$(mode)" "fast"
STDOUT_FILE = sphere.fastppm
else
STDOUT_FILE = sphere.ppm
endif

SRC_RUNTEST_OPTS += -o1 $(STDOUT_FILE)

all boot :: $(STDOUT_FILE)

include $(TOP)/mk/target.mk

