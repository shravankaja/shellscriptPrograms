xx#!/bin/bash -x
echo " Give date "
read x
echo " Give month"
read y
may=31
jun=30
fiv=05
six=06
tr=20
if [ $y -eq $fiv -a $x -gt $tr -a $x -lt $may ]
then 
	echo "True"
elif [ $x -eq $tr ]
then 
	echo "True"
elif [ $y -eq $six -a $x -lt $tr ]
then 	
	echo "True"
elif [ $x -eq $tr ]
then 
	echo "True"
else
	echo "false"
fi
