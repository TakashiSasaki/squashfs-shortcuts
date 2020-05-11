#!/usr/bin/make -f
.ONESHELL:
SHELL=/bin/bash
.SHELLFLAGS=-euc
.DEFAULT_GOAL=$(word 1, $(MAKEFILE_LIST))

#$(info ------)
#$(info $(.DEFAULT_GOAL))
#$(info $(MAKECMDGOALS))
#$(info $(.VARIABLES))
#$(info ------)

#.PHONY: SHBANG test-shbang arg1

mksquashfs-zstd-1-silent:
	@echo $@ <name>.squashfs 

mksquashfs-zstd-1-progress:
	@echo $@ <name>.squashfs 

mksquashfs-show:
	@echo $@ <name>.squashfs

%.squashfs:

