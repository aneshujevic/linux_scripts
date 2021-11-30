#!/bin/bash

# bash script to sort out ip addresses by access times from log file
# access log is unavailable, uniq -c prefixes lines by number of appearances while sort n sorts by numerical values (-r reverses)

if [[ $# -ne 1 ]]; then
    echo "USAGE: $0 <log.txt>";
    exit -1;
elif [ ! -f $1 ]; then
    echo "log file $1 does not exist";
    exit -2;
fi


cat $1 | cut -d " " -f 1 | sort | uniq -c | sort -urn
