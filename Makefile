.PHONY: all bash fish

DESTDIR ?= /usr/local/bin
XDG_CONFIG_HOME ?= $(HOME)/.config

all: bash fish $(DESTDIR)/agentmgr

bash: $(XDG_CONFIG_HOME)/bash $(HOME)/.ssh/agents

fish: $(XDG_CONFIG_HOME)/fish $(HOME)/.ssh/agents

$(HOME)/.ssh/agents: 
	mkdir -p $@
	chmod 0700 $@

$(DESTDIR)/agentmgr: agentmgr
	cp -v $< $@

$(XDG_CONFIG_HOME)/%: shell-support/%
	cp -rv $</* $@
