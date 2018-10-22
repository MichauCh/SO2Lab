#!/bin/bash

COUNTER=1

for file in `ls -S $1`; do
	if [ -x "$1"/$file -a -f "$1"/$file ]; then
		mv "$1/$file" "$1/$file.$COUNTER"
		echo $file.$COUNTER
		COUNTER=$(($COUNTER+1))
fi
done
