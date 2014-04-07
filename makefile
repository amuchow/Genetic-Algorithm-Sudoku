# Makefile for Genetic Algorithm Sudoku
#
# Author: Brock Benson
#
#
# Modifications:

# C++ compiler flags (add -O to optimize)
CXXFLAGS += -Wall -g -std=c++11

# linker
LINK = g++

#-----------------------------------------------------------------------

# Targets:

# MAKE allows the use of "wildcards", to make writing compilation instructions
# a bit easier. GNU make uses $@ for the target and $^ for the dependencies.

#===========================================

# By default, build (almost) everything:

EXE = ga

all:	$(EXE)

#===========================================

ga:	main.cpp functions.cpp
	$(LINK) -o $@ $^


#===========================================

clean:
	rm -f *.o *~ core

cleanall:
	rm -f *.o *~ core $(EXE)
