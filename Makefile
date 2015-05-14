.PHONY: all bash fish

DESTDIR ?= /usr/local/bin
XDG_CONFIG_HOME ?= $(HOME)/.config

all: bash fish $(DESTDIR)/agentmgr

bash: $(XDG_CONFIG_HOME)/bash

fish: $(XDG_CONFIG_HOME)/fish

$(DESTDIR)/agentmgr: agentmgr
	cp -v $< $@

$(XDG_CONFIG_HOME)/%: shell-support/%
	cp -rv $< $@
