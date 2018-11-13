#!/usr/bin/make -f
# Makefile for mkversion program.

TARGET = mkversion
OBJECTS = mkversion.o

CC = gcc
CFLAGS = -std=c99 -g -Wall

all:
	@echo "run make build"

build:
	gcc mkversion.c -o mkversion

clean:
	rm -f mkversion

install: 
	cp -f mkversion /usr/bin/mkversion

build-rpi:
	/opt/cross-pi-gcc/bin/arm-linux-gnueabihf-gcc mkversion.c -o mkversion

install-rpi:
	@echo "Nix zu tun"
