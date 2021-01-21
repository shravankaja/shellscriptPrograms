#!/bin/bash 
for (( i=1 ; $i<=100 ; i++ ))
do
	#rand=`shuf -i 0-100 -n 1`
	if [ $(($i%11)) -eq 0 ]
	then 
		arr[i]=$i
	fi
done
for i2 in "${arr[@]}"
do 
    echo $i2 
done


