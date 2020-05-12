#!/usr/bin/make -f
.ONESHELL:
SHELL=/bin/bash
.SHELLFLAGS=-euc
.DEFAULT_GOAL=help
.PHONY: show-makefile-list show-default-goal show-makecmdgoals show-variables

show-makefile-list:
	$(info show-makefile-list)
	$(info $(MAKEFILE_LIST))

show-default-goal:
	$(info show-default-goal)
	$(info $(.DEFAULT_GOAL))

show-makecmdgoals:
	$(info $(MAKECMDGOALS))

show-variables:
	$(info $(.VARIABLES))


#### your code hereafter

.PHONY: help install

help:
	@echo
	@echo Usage:
	@echo 
	@echo '    ' mksquashfs-zstd-1 "<name>.squashfs"
	@echo 

install: 
	ln -sf $(abspath $(MAKEFILE_LIST)) /usr/local/bin/mksquashfs-zstd-1

%.squashfs: %
	time mksquashfs $< $@ $(option) -comp zstd -Xcompression-level 1
	unsquashfs -ll $@

