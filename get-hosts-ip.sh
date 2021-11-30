#!/bin/bash

# bash script to get ip addresses of the urls defined in given file

if [[ $# -ne 1 ]]; then
    echo "USAGE: $0 <host-file.txt>";
    exit -1;
elif [ ! -f $1 ]; then
    echo "file $1 does not exist";
    exit -2;
fi

for url in $(cat $1); do host $url; done | grep 'has address' | cut -d " " -f 1,4 | sort -u

