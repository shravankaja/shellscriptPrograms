#!/bin/bash -x
arr=( 10 4 3 6 8 )
for (( i1=0 ; $i1 < 5 ; i1++ ))
do
for (( i=0 ;$i < 5 ; i++ ))
do
 if [ ${arr[i]} -lt ${arr[i+1]} ]
then
	temp=${arr[i]}
	arr[i]=${arr[i+1]}
	arr[i+1]=$temp
fi
	
done
done  
for i in "${arr[@]}"
do 
	echo $i
done
