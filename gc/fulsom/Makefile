TOP = ../..
include $(TOP)/mk/boilerplate.mk

SRC_HC_OPTS += -cpp

# Bah.hs is a test file, which we don't want in SRCS
EXCLUDED_SRCS = Bah.hs

FAST_OPTS = 7
NORM_OPTS = 9
SLOW_OPTS = 9

SRC_RUNTEST_OPTS += -stdout-binary

include $(TOP)/mk/target.mk
