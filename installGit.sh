#!/bin/bash
#
which git
if [ $? -eq "0" ]; then
	echo "`git --version` is already installed in the `hostname` machine"
	exit
else
	echo "no git is installed"
	sudo add-apt-repository ppa:git-core/ppa
	sudo apt update
	sudo apt install git
fi
exit

