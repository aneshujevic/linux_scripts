#!/bin/bash

ERROR_ARGS='ERROR: Not enough arguments'
USAGE_MESSAGE='\tusage: conv_mp4_to_mp3.sh <INPUT_FILE> <OUTPUT_FILE>.mp3'

if [ "$#" -eq 1 ] && [ "$1" = "-h" ] || [ "$1" = "--help" ] 
	then
		echo "Script to convert video file to mp3"
		printf $USAGE_MESSAGE
		exit 0
fi

if [ -z "$1" ]
	then
		echo $ERROR_ARGS
		echo -e $USAGE_MESSAGE
elif [ -z "$2" ]
	then
		echo $ERROR_ARGS
		echo -e $USAGE_MESSAGE
else
	ffmpeg -i $1 -vn -ar 44100 -ac -2 -b:a 192k $2
fi
