#!/bin/sh

###! This is a simple script that runs debootstrap to create our environment for docker

# Do-not-run: used only as reference
# FIXME(Krey): Feel free to finish this
exit 38

sudo debootstrap \
	--variant=minbase \
	--arch amd64 \
	--no-merged-usr \
	buster .