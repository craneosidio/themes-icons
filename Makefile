#!/usr/bin/env make

all: update

update:
	git fetch
	git submodule update --init
	-git submodule foreach git checkout master
	-git submodule foreach git branch --set-upstream-to=origin/master master
	git submodule foreach git pull