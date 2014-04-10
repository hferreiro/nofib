TOP = ../..
include $(TOP)/mk/boilerplate.mk

SRC_RUNTEST_OPTS += -stdout-binary

SRC_HC_OPTS += -fglasgow-exts

compress2-norm.stdin:
	seq 1 15 | xargs -Inone cat compress2-fast.stdin > $@

compress2-slow.stdin:
	seq 1 42 | xargs -Inone cat compress2-fast.stdin > $@

ifeq "$(mode)" "slow"
 INPUT_FILE = compress2-slow.stdin
else
 ifeq "$(mode)" "fast"
  INPUT_FILE = compress2-fast.stdin
 else
  INPUT_FILE = compress2-norm.stdin
 endif
endif

SRC_RUNTEST_OPTS += -i $(INPUT_FILE)

all boot :: $(INPUT_FILE)

include $(TOP)/mk/target.mk

