TOP = ../../..
include $(TOP)/mk/boilerplate.mk

SRC_HC_OPTS += -cpp -fglasgow-exts

FAST_OPTS = 400000
NORM_OPTS = 5000000 +RTS -K64M -RTS
SLOW_OPTS = 15000000 +RTS -K128M -RTS

include $(TOP)/mk/target.mk

