#!/bin/sh
if [ -d $file = $Lab2]
then
	rm -rf $file
	mkdir -p "Lab2"
	mkdir -p "Lab2/a"
	mkdir -p "Lab2/b"
	mkdir -p "Lab2/b/c"
	mkdir -p "Lab2/b/d"

	echo "test plik1" >> "Lab2/a/plik1"
	echo "test plik2" >> "Lab2/a/plik2"

	echo "test plikA" >> "Lab2/b/c/plikA"
	echo "test plikB" >> "Lab2/b/c/plikB"
	
	ln -s /Lab2/a/plik1 "Lab2/b/d/link_plik1"
	ln -s /Lab2/b/c/plikA "Lab2/b/d/link_plikA"
	ln -s /Lab2/b/c "Lab2/b/d/link_c"

	ln -s "readlink -f plik2" "Lab2/b/d/link_2_bez"
	ln -s "readlink -f plik1" "Lab2/b/d/link_1_bez"
	ln -s "readlink -f plikB" "Lab2/b/d/link_B_bez"
fi
