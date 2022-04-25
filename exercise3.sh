#!/bin/sh

date=`date +%Y.%m.%d`

echo "The lucky numbers for $date are:"

declare -a lottery=`for i in {1..5};do shuf -i 1-50 -n1 ;done | xargs -n5` 

echo $lottery && echo "Lottery numbers for $date are: $lottery" >> lotery.log

echo "The Bonus ball is"

RANDOM=$$

for i in `seq 1`
do
	B=$(($RANDOM%10+1))
	echo $B && echo "Bonus ball for $date is:  $B" >> lotery.log
done

read -p "Please Enter your lottery numbers followed by your bonus numner:" balls
read -p "Enter the date YY/MM/DD:" date

balls=(`echo $balls | sort -g | tr ' ' ' '`) | echo ${balls[@]}
lottery=(`echo $lottery | sort -g |  tr ' ' ' '`) | echo ${lottery[@]}
	
matches=0


`diff -y <(printf '%s\n' "${balls[@]}")  <(printf '%s\n' "${lottery[@]}")`

echo "You have got $matches matches"











