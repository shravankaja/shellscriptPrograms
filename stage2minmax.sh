
#!/bin/bash -x
read x
read y
read z
if [ $x -gt $y -a $x -gt $z ]
then
	echo $x" is max"
elif [ $y -gt $x -a $y -gt $z ]
then
	echo $y " is max"
else
	echo $z " is max"
fi

if [ $x -lt $y -a $x -lt $z ]
then
        echo $x" is min"
elif [ $y -lt $x -a $y -lt $z ]
then
        echo $y " is min"
else
        echo $z " is min"
fi
