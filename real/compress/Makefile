TOP = ../..
include $(TOP)/mk/boilerplate.mk

SRC_RUNTEST_OPTS += -stdout-binary

SRCS = BinConv.hs BinTest.hs Decode.hs Defaults.hs Encode.hs Main.hs PTTrees.hs Uncompress.hs

Lzw_HC_OPTS = -cpp

compress-norm.stdin:
	seq 1 12 | xargs -Inone cat compress-fast.stdin > $@

compress-slow.stdin:
	seq 1 35 | xargs -Inone cat compress-fast.stdin > $@

ifeq "$(mode)" "slow"
 INPUT_FILE = compress-slow.stdin
else
 ifeq "$(mode)" "fast"
  INPUT_FILE = compress-fast.stdin
 else
  INPUT_FILE = compress-norm.stdin
 endif
endif

SRC_RUNTEST_OPTS += -i $(INPUT_FILE)

all boot :: $(INPUT_FILE)

include $(TOP)/mk/target.mk

