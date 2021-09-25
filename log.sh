#!/bin/bash

if [ $# -lt 1 ]
then
    echo 'Log script'
    echo '[*] Usage: $0 <program-to-follow> <refresh-time> <number-of-lines>'
    exit -1
fi

PROGRAM_FOLLOW=$1
REFRESH_TIME=5
if [ $# -e 2 ]
then
    REFRESH_TIME=$2
fi

LINE_NO=50
if [ $# -e 3 ]
then
    LINE_NO=$3
fi

while true;
do
    clear && $PROGRAM_FOLLOW | tail -$LINE_NO && sleep $REFRESH_TIME;
done

