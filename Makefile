#!/usr/bin/env make

all: update

update:
	-git submodule update
	-git submodule foreach git checkout master
	-git submodule foreach git branch --set-upstream-to=origin/master master
	-git submodule foreach git pull
	-git add .
	-git commit -m "update submodules"
	-git submodule foreach git checkout -- .
