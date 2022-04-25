#!/bin/sh


arrNum=()

while [ ${#arrNum[@]} -le 4 ]
do
	echo "Please insert a random number:"
	read N1

	if ! [[ "$N1" =~ ^[0-9]+$ ]]; then
   		echo "Contains letters!"
	else
		arrNum+=($N1)
	echo ${arrNum[@]}
	fi
done
while [ ${#arrNum[@]} -le 9 ]
do
	echo "Do you want to add another number? (y/n)?"
        read answer

	 if [ "$answer" != "${answer#[Yy]}" ]; then

		echo "Please insert a random number:"
		read N1
       			 if ! [[ "$N1" =~ ^[0-9]+$ ]]; then
                	echo "Contains letters!"
       		 else
                	arrNum+=($N1)
		#	 echo ${arrNum[@]}
        		fi
	 else
		 break
	 fi
done

product=1
sum=0
average=0
for (( i = 0;i < ${#arrNum[@]}; ++i )); do
	product=$(($product*${arrNum[$i]}))
	sum=$(($sum+${arrNum[$i]}))
	average=$(($sum/${#arrNum[@]}))
done

max=${arrNum[0]}
min=${arrNum[0]}
for i in "${arrNum[@]}";do
  (( i > max )) && max=$i
  (( i < min )) && min=$i
done

echo "Your choosen numbers are:"
echo ${arrNum[@]}

echo "The product of your choosen numbers is:"
echo $product

echo "the average of your choosen numbers is:"
echo $average

echo "The sum of your choosen numbers is:"
echo $sum

echo "The minimum value of your choosen numbers is:"
echo $min

echo "The maximum value of your choosen numbers is:"
echo $max
