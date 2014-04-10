TOP = ../..
include $(TOP)/mk/boilerplate.mk
include $(TOP)/mk/target.mk

FAST_OPTS = 500
NORM_OPTS = 2000
SLOW_OPTS = 3800

# The benchmark game also uses -fllvm, which we can't since it might
# not be available on the developer's machine.
HC_OPTS += -XBangPatterns -XMagicHash -O2 -fexcess-precision
