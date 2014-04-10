TOP = ../..
include $(TOP)/mk/boilerplate.mk

SRC_RUNTEST_OPTS += -stdout-binary

# Override SRCS so that we don't link in MandelOld.hs
SRCS = Main.lhs Mandel.lhs PortablePixmap.lhs

mandel.faststdout: mandel
	./mandel <$(STDIN_FILE) > $@

mandel.stdout: mandel
	./mandel <$(STDIN_FILE) > $@

mandel.slowstdout: mandel
	./mandel <$(STDIN_FILE) > $@

ifeq "$(mode)" "slow"
STDOUT_FILE = mandel.slowstdout
else ifeq "$(mode)" "fast"
STDOUT_FILE = mandel.faststdout
else
STDOUT_FILE = mandel.stdout
endif

SRC_RUNTEST_OPTS += -o1 $(STDOUT_FILE)

all boot :: $(STDOUT_FILE)

include $(TOP)/mk/target.mk

