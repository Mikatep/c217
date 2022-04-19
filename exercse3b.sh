#!/bin/sh

read -p `echo "Enter your numbers:"` ball
read -p `echo "Enter your bonus ball:"` bonusball

while true 
do
	read ball
	echo $ball >> lotery.log
	if [`wc -1 lotery.log` -gt 4 ]
	then
		read bonusball
		echo $bonusball >> lotery.log
		break
	else
		continue
	fi 
done

