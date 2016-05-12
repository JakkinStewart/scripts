#! /usr/bin/bash
var=${1:0:${#1}-2}

if [ -s $1 ]; then
	vim $1
	make -j7 $var
else
	echo "#include <stdio.h>" > $1
	echo "" >> $1
	echo "" >> $1
	vim $1
	make -j7 $var
fi
