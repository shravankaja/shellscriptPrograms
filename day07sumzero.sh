#!/bin/bash
echo " Enter number of ele"
read n
for (( i=0 ; $i < n ; i++ ))
do
	read x
	arr[i]=$x
done
for (( k=0 ; $k < $n-2 ; k++ ))
do
for (( i=$(( $k + 1 )) ; $i < $n-1 ; i++ ))
do 
for (( j=$(( $j + 1 )) ; $j <  $n ; j++ ))
do
	if [ $(( arr[$k]+arr[$i]+arr[$j] )) -eq 0 ]
	then 
		echo " Eelemnts whose sm is euqal to zero"
		echo ${arr[k]} ${arr[i]} ${arr[j]}
	fi
done
done 
done
