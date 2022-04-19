#!/bin/sh

read -p "Please enter the first integer:" A
read -p "Please enter the second integer:" B

echo $A | grep '[0-9]' 
echo $B | grep '[0-9]'


if test $A -ge 0 && test $B -ge 0 ;then
	echo "$(($A-$B))"
	else
		echo "Please only integers"
	fi




