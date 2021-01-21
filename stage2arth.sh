#!/bin/bash -x
read x
read y
read z
x1=$(( $x + $y * $z ))
x2=$((  $z + $x / $y ))
x3=$((($x % $y) + $z ))
x4=$((  $x * $y + $z ))
if [ $x1 -gt $x2 -a $x1 -gt $x3 -a $x1 -gt $x4 ]
then
        echo $x1" is max"
elif [ $x2 -gt $x1 -a $x2 -gt $x3 -a $x2 -gt $x4 ]
then
        echo $x2 " is max"
elif [ $x3 -gt $x1 -a $x3 -gt $x2 -a $x3 -gt $x4 ]
then
	echo $x3" is max"
else
	echo $x4" is max"
fi

if [ $x1 -lt $x2 -a $x1 -lt $x3 -a $x1 -lt $x4 ]
then
        echo $x1" is min"
elif [ $x2 -lt $x1 -a $x2 -lt $x3 -a $x2 -lt $x4 ]
then
        echo $x2 " is min"
elif [ $x3 -lt $x1 -a $x3 -lt $x2 -a $x3 -lt $x4 ]
then
        echo $x3" is min"
else
        echo $x4" is min"
fi

