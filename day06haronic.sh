#!/bin/bash -x
read x
t=0
sum=0
for (( i=1 ; $i <= $x ; i++ ))
do
	t=1/$i
	sum=$( echo "scale=6;$sum + $t" | bc )
done
echo $sum
