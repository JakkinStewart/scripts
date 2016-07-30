#! /usr/bin/bash
var=${1:0:${#1}-2}

if [ -s $1 ]; then
	vim $1
	clear
	echo "Do you want to compile?"
	read input2
	if [ $input2 == 'y' ]; then
		make -j7 $var; mpg123 -q /home/v/Downloads/beep.mp3
	fi
else
	echo "#include <stdio.h>" > $1
	echo "#include <stdlib.h>" >> $1
	echo "" >> $1
	echo "" >> $1
	vim $1
	clear
	echo 'Do you want to compile?'
	read input1
	if [ $input1 == 'y' ]; then
		make -j7 $var; mpg123 -q /home/v/Downloads/beep.mp3
	fi
fi
