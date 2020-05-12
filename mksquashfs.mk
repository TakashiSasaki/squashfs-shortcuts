#!/usr/bin/make -f
.ONESHELL:
SHELL=/bin/bash
.SHELLFLAGS=-euc
.DEFAULT_GOAL=$(word 1, $(MAKEFILE_LIST))
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

#.PHONY: SHBANG test-shbang arg1

install: 
	ln -sf $(abspath $(MAKEFILE_LIST)) /usr/local/bin/mksquashfs-zstd-1

%.squashfs: %
	time mksquashfs $< $@ $(option) -comp zstd -Xcompression-level 1
	unsquashfs -ll $@

