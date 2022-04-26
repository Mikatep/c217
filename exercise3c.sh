#!/bin/sh

DATE=$(date '+%Y.%m.%d')


LOTTERYFILE="lotery${DATE}.log"

USER_CHOICES=()

	echo "User, please enter ball number 1:" 
	read ball1 
	
	echo "User, please enter ball number 2:"
        read ball2
	
	echo "User, please enter ball number 3:"
        read ball3
	
	echo "User, please enter ball number 4:"
        read ball4
	
	echo "User, please enter ball number 5:"
        read ball5	
echo User, Please enter your bonus ball number
read bonus

echo "Your Balls are $ball1 $ball2 $ball3 $ball4 $ball5 and your bonus is $bonus"

echo "Today is $DATE"

my_array=($ball1 $ball2 $ball3 $ball4 $ball5)

echo $my_array

RANDOM_NUMBERS=()
COUNTER=0
MATCHES=0

grep -Eo $ball1 $ball2 $ball3 $ball4 $ball5 lotery$date.log| echo "You got `wc -l` matches" 
if grep -Eo $bonus lotery$date.log  = TRUE ; then
	echo "Congrats you also got to use your bonus ball"
fi
