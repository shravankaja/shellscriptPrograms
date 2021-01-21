#!/bin/bash 

for (( i=1  ; $i <= 50 ; i++ ))
do
rand=$(($RANDOM%12 ))
rand1=$(( $rand + 1 ))
arr[$i]=$rand1
done
#for key in ${!arr[@]}; do
 #   echo ${key} ${arr[${key}]}
#done


for i in "${!arr[@]}"
do 
	if [ ${arr[i]} -eq 1 ]
	then
	echo "Individuals having birthdy in the 1 -" $i
	elif  [ ${arr[i]} -eq 2 ]
        then
        echo "Individuals having birthdy in the moonth 2 -" $i
        elif  [ ${arr[i]} -eq 3 ]
        then
        echo "Individuals having birthdy in the moonth 3 -" $i
	elif  [ ${arr[i]} -eq 4 ]
        then
        echo "Individuals having birthdy in the moonth 4 -" $i
        elif  [ ${arr[i]} -eq 5 ]
        then
        echo "Individuals having birthdy in the moonth 5 -" $i
	elif  [ ${arr[i]} -eq 6 ]
        then
        echo "Individuals having birthdy in the moonth 6 -" $i
	elif  [ ${arr[i]} -eq 7 ]
        then
        echo "Individuals having birthdy in the moonth 7 -" $i
	elif  [ ${arr[i]} -eq 8 ]
        then
        echo "Individuals having birthdy in the moonth 8 -" $i
	elif  [ ${arr[i]} -eq 9 ]
        then
        echo "Individuals having birthdy in the moonth 9 -" $i
	elif  [ ${arr[i]} -eq 10 ]
        then
        echo "Individuals having birthdy in the moonth 10 -" $i
	elif  [ ${arr[i]} -eq 11 ]
        then
        echo "Individuals having birthdy in the moonth 11 -" $i
	elif  [ ${arr[i]} -eq 12 ]
        then
        echo "Individuals having birthdy in the moonth 12 -" $i
	fi


done

