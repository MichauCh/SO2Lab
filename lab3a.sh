#! /bin/bash

if [ $# -eq 1 ]
then
	find . -type f -perm /020 -o ! -perm /040 |sort |tail --lines=5
fi
