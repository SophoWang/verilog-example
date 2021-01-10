include ../../common/com.mk

COMP_OPT += -sverilog
COMP_OPT += +vcs+fsdbon -kdb
# COMP_OPT += -timescale=1ns/1ps
COMP_OPT += -l comp.log
# COMP_OPT += -top test

COMP_DEBUG_OPT += -diag timescale
COMP_DEBUG_OPT += -debug_accsee+all

DUT_F += 
TB_F += -F ../tb.f

all: comp sim

comp:
	vcs ${COMP_OPT} ${COMP_DEBUG_OPT} ${DUT_F} ${TB_F} -q

sim:
	./simv -l  sim.log -q
