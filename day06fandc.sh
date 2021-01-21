#!/bin/bash -x
echo " Enter Celcisus"
read x
echo " Enter Farahnite"
read y
if [ $x -gt 0  -a  $x -lt 100 ]
then 
	echo "valid input"
else
	read x
	
fi
if [ $y -gt 32  -a  $y -lt 212 ]
then
        echo "valid input"
else
        read y
fi
rx=0
ry=0
echo " Enter choice a. F to C conv b. C to F conv "
read n
case "$n" in 
	a)
	ry=$(echo "scale=2;((9/5) * $x) + 32" |bc)
	echo $ry ;;
	b) 
	rx=$(echo "scale=2;(5/9)*($y-32)"|bc)
	echo $rx ;;
esac

