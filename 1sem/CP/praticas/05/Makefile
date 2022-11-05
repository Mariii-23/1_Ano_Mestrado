##
# KMEANS
#
# @file
# @version 0.1
CC = gcc
SRC =
INCLUDES = include/
EXEC = main
CFLAGS = -std=c11 -Wall -Wextra -Wdouble-promotion -Werror=pedantic \
		 -Werror=vla -pedantic-errors -Wfatal-errors -Wconversion \
		 -Wsign-conversion -funroll-loops -flto -finline-small-functions \
         -O2 -fopenmp -g

.DEFAULT_GOAL = main

compile: $(SRC)main.c
	# module load gcc/7.2.0
	$(CC) $(CFLAGS) $(SRC)main.c -o $(BIN)$(EXEC)

clean:
	rm -r $(BIN)

run: compile
	./$(BIN)$(EXEC)

record:
	perf record ./$(BIN)$(EXEC)

report:
	perf report
