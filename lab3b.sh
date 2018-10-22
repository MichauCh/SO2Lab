#! /bin/bash

if [ $# -eq 1 ]
then
	find $1 | while -type f -name "*.jpg" -size -64c
do
printf "%s\n" -l $path | tr  '/' '\'
done
fi

