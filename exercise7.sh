#!/bin/sh

points=0
echo "Welcome to the True or False test about UK and life in the UK"
echo "Please enter true or false in every single one of the questions"

read -p "London is the capital of United Kingdom:" a 
if $a == true  ;then echo "You got it right!" && let points=points+1 ;else echo "You made a mistake";fi
read -p "London can be found in the North east of United Kingdom:" b
if $b == true  ;then echo "You made a mistake!!" ;else echo "You got it right!" && let points++;fi
read -p "The current queen of England is Elizabeth the II:" c
if $c == true ;then echo "You got it right!" && let points++ ;else echo "You made a mistake";fi
read -p "Uk is well Known for it's tropical climate:" d
if $d == true ;then echo "You made a mistake!!" ;else echo "You got it right!" && let points++;fi
read -p "London has a population of almost 2 million people:" e
if $e == true ;then echo "You made a mistake!!" ;else echo "You got it right!" && let points++;fi
read -p "London is one of the most affordable capitals in Europe:" f
if $f == true ;then echo "You made a mistake!!" ;else echo "You got it right!" && let points++;fi
read -p "United kingdom is located in the North hemisfere:" g
if $g == true ;then echo "You got it right!" && let points++ ;else echo "You made a mistake";fi
read -p "The chesire palace is the main residency of the british monarchs:" h
if $h == true ;then echo "You made a mistake!!" ;else echo "You got it right!" && let points++;fi
read -p "There're 3 airports in London:" i
if $i == true ;then echo "You made a mistake!!" ;else echo "You got it right!" && let points++;fi
read -p "The official language in England is french:" j
if $j == true ;then echo "You made a mistake!!" ;else echo "You got it right!" && let points++;fi


echo "Congratulations! You have scored $points points"













