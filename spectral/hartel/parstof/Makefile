TOP = ../../..
include $(TOP)/mk/boilerplate.mk

SRC_HC_OPTS += -cpp -fglasgow-exts -H80M

# not suitable for the fast/norm/slow treatment: GHC optimises
# the repeatition away.

include $(TOP)/mk/target.mk

FAST_OPTS = 40
NORM_OPTS = 5000000
SLOW_OPTS = 20000000
