#!/bin/bash -x
echo " Rolling Dice "
t=10
i=0
while :
do
rand=$(($RANDOM%7))
if [ $rand -eq 1 ]
then
i=$(( $i + 1 ))
arr[1]=$i
if [ $i -eq 10 ]
then 
	break
fi
fi
if [ $rand -eq 2 ]
then
i1=$(( $i1 + 1 ))
arr[2]=$i1
if [ $i1 -eq 10 ]
then
        break
fi
fi
if [ $rand -eq 3 ]
then
i2=$(( $i2 + 1 ))
arr[3]=$i2
if [ $i2 -eq 10 ]
then
        break
fi
fi
if [ $rand -eq 4 ]
then
i3=$(( $i3 + 1 ))
arr[4]=$i3
if [ $i3 -eq 10 ]
then
        break
fi
fi
if [ $rand -eq 5 ]
then
i4=$(( $i4 + 1 ))
arr[5]=$i4
if [ $i4 -eq 10 ]
then
        break
fi
fi
if [ $rand -eq 6 ]
then
i5=$(( $i5 + 1 ))
arr[6]=$i5
if [ $i5 -eq 10 ]
then
        break
fi
fi
done
for key in ${!arr[@]}; do
    echo ${key} ${arr[${key}]}
done

max=${arr[0]}
echo 
for (( i = 1 ; $i <= 5 ; i++ ))
do
    if [[ "${arr[i]}" -gt "$max" ]]; then
        max="${arr[i]}"
	index=$i
    fi
done
echo "Number which has appeared max time"
echo $max $index

min1=${arr[0]}

for (( i1 = 1 ; $i1 <= 5 ; i1++ ))
do
    if [[ "${arr[i1]}"  -lt  "$min" ]]; then
        min1="${arr[i1]}"
        index1=$i1
    fi
done
echo $min $index1

