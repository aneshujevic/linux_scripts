#!/bin/bash

if [ $# -lt 1 ]; then
    echo '[*] Wifi mode script'
    echo '[*] Usage: $0 <interface-name> <mode>'
    echo '# sudo required'
    exit -1
fi

if [ $2 = "monitor" ]; then
	sudo systemctl stop NetworkManager && sudo ifconfig $1 down && sudo iwconfig $1 mode monitor && sudo ifconfig $1 up;
	echo "Successfully entered monitor mode."
elif [ $2 = "managed" ];then
	sudo ifconfig $1 down && sudo iwconfig $1 mode managed && sudo ifconfig $1 up && sudo systemctl start NetworkManager  
	echo "Successfully entered managed mode."
else
	echo "Unknown mode."
fi


