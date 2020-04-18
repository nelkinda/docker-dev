.PHONY: all
all:
	echo This Makefile does not do anything.
	echo It is just for demonstrating how to integrate the modules into your own Makefile.

include SonarQube.mk

-include .makehelp/include/makehelp/Help.mk

ifeq (help, $(filter help,$(MAKECMDGOALS)))
.makehelp/include/makehelp/Help.mk:
	git clone --depth=1 https://github.com/christianhujer/makehelp.git .makehelp
endif

-include ~/.User.mk
-include .User.mk
