TOP = ../..
include $(TOP)/mk/boilerplate.mk

# These values are only used in this file. They are ignored by the
# executable itself.
FAST_OPTS = 25000
NORM_OPTS = 500000
SLOW_OPTS = 2000000

# The benchmark game also uses -fllvm, which we can't since it might
# not be available on the developer's machine.
HC_OPTS += -O2 -XBangPatterns -package bytestring

#------------------------------------------------------------------
# Create input

fasta-c : ../fasta/fasta-c.c
	$(CC) -std=gnu99 -O3 -fomit-frame-pointer $< -o $@

knucleotide-input25000.txt : fasta-c
	./fasta-c $(FAST_OPTS) > $@

knucleotide-input500000.txt : fasta-c
	./fasta-c $(NORM_OPTS) > $@

knucleotide-input2000000.txt : fasta-c
	./fasta-c $(SLOW_OPTS) > $@

ifeq "$(mode)" "slow"
 INPUT_FILE = knucleotide-input2000000.txt
else
 ifeq "$(mode)" "fast"
  INPUT_FILE = knucleotide-input25000.txt
 else
  INPUT_FILE = knucleotide-input500000.txt
 endif
endif

SRC_RUNTEST_OPTS += -i $(INPUT_FILE)

all boot :: $(INPUT_FILE)

include $(TOP)/mk/target.mk
