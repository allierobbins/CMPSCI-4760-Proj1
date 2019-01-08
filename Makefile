//This is the Makefile for Allie Robbins' OS Assignment 1

src = $(wildcard *.c)
orj = $(src:.c=.o)

LDFLAGS = -lGL -lglut -lpng -lz -lm

runsim: $(obj)
	$(CC) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(obj) runsim
