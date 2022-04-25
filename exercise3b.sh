#!/bin/sh

 
read -p "Please Enter your lottery numbers followed by your bonus numner:" balls
read -p "Enter the date YY/MM/DD:" date

echo "You want to check the following numbers: $balls" 
echo "For the following date: $date"

lotterystring="$(cat $date)"
lottery=(`echo $lotterystring | tr ' ' ' '`)
balls=(`echo $balls | tr ' ' ' '`)

echo ${balls[@]}

matches=0

for((i=0;i<${#balls[*]}-1;i++));do
    for((j=0;j<${#lottery[*]}-1;j++)) ;do
        if [ ${balls[i]} = ${lottery[j]} ] ;then
             let counter++
        fi
        
    done
done

echo "You have $matches matches"





