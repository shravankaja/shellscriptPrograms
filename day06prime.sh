#!/bin/bash -x
echo "Enter Number"
read x
for (( i2=2 ; $i2 <= $x ; i2++ ))
do
i=2  
f=0
while [ $i -le $(( $i2/2 )) ]
do
if [ $(( $i2%$i )) -eq 0 ]
then 
f=1
fi
i=$(( $i+1 ))
done
if [ $f -eq 1 ]
then
	echo "Not Prime"
else
	echo "Prime"
fi
done

