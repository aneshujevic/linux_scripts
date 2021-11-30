#!/bin/bash

# bash script to filter out http/https links from a given HTML file

if [[ $# -ne 1 ]]; then
    echo "USAGE: $0 <webpage.html>";
    exit -1;
elif [ ! -f $1 ]; then
    echo "file $1 does not exist";
    exit -2;
fi

cat $1 | grep -o '([https]|[http])://[^"]*' | cut -d "/" -f 3 | sort -u 

