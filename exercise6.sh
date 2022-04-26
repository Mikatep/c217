#!/bin/sh

echo "Welcome to the greater than checker, this script will check if the first of your integers is bigger than the second"

read -p "Please enter the first integer:" A
read -p "Please enter the second integer:" B

echo $A | grep '[0-9]' 
echo $B | grep '[0-9]'


if test $A -ge 0 && test $B -ge 0 ;then
	if (( $A >  $B));then
		echo "TRUE, A is greater than B"
	else
		echo "FALSE, A is not greater than B"
	fi
	else
		echo "Please only integers"
	fi




