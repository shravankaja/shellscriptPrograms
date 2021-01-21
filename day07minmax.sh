#!/bin/bash  
for (( i=1 ; $i<=10 ; i++ ))
do 
 	rand=`shuf -i 100-999 -n 1`
	arr[$i]=$rand
	echo ${arr[i]}
done 
max=0
smax=0
if [ ${arr[0]} > ${arr[1]} ]
then 
	max=${arr[0]}
	smax=${arr[1]}
else
	max=${arr[1]}
	smax=${arr[0]}
fi
for (( i2=2 ; $i2 < 10 ; i2++ ))
do
	if [ $max -lt ${arr[i2]} ]
	then
	smax=$max
	max=${arr[i2]}
	elif [ $smax -lt ${arr[i2]} ]
	then
	smax=${arr[i2]}
	fi
done
echo  "Second Maximum" $smax
min=0
smin=0
if [ ${arr[0]} < ${arr[1]} ]
then
        min=${arr[0]}
        smin=${arr[1]}
else
        min=${arr[1]}
        smin=${arr[0]}
fi

for (( i3=2 ; $i3 < 10 ; i3++ ))
do
        if [ $min -gt ${arr[i3]} ]
        then
        smin=$min
        min=${arr[i3]}
        elif [ $smin -gt ${arr[i3]} ]
        then
        smin=${arr[i3]}
        fi
done
echo "Second Minimum" $smin

