#!/bin/sh

echo Lottery

RANDOM=$$

for i in `seq 5`
do
	L=$(($RANDOM%50+1))
	echo $L && echo $L  >> lotery.log
done

echo Bonus

RANDOM=$$

for i in `seq 1`
do
	B=$(($RANDOM%10+1))
	echo $B && echo $B >> lotery.log	
done
