TOP = ../..
include $(TOP)/mk/boilerplate.mk
-include opts.mk

SLOW_OPTS = +RTS -K16M -RTS

gamteb.faststdout: gamteb
	./gamteb <$(STDIN_FILE) $(FAST_OPTS) > $@
gamteb.stdout: gamteb
	./gamteb <$(STDIN_FILE) $(NORM_OPTS) > $@
gamteb.slowstdout: gamteb
	./gamteb <$(STDIN_FILE) $(SLOW_OPTS) > $@

ifeq "$(mode)" "slow"
STDOUT_FILE = gamteb.slowstdout
else ifeq "$(mode)" "fast"
STDOUT_FILE = gamteb.faststdout
else
STDOUT_FILE = gamteb.stdout
endif

SRC_RUNTEST_OPTS += -o1 $(STDOUT_FILE)

all boot :: $(STDOUT_FILE)

include $(TOP)/mk/target.mk
