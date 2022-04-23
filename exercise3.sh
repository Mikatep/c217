#!/bin/sh

date=`date +%Y.%m.%d`

echo "The lucky numbers for $date are:"

lottery=`for i in {1..5};do shuf -i 1-50 -n1 ;done | xargs -n5` 

echo $lottery && echo "Lottery numbers for $date are: $lottery" >> lotery.log

echo "The Bonus ball is"

RANDOM=$$

for i in `seq 1`
do
	B=$(($RANDOM%10+1))
	echo $B && echo "Bonus ball fot $date is:  $B" >> lotery.log
done
