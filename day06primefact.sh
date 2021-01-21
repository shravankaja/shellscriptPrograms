#!/bin/bash 
read x
z=0
t=2
while [ $(( $x%$t )) -eq $z ]
do 
	echo "2"
	x=$(( $x/$t ))
done
for (( i=3 ; $i<=$sqrt($x) ; i=i+2 ))
do
	while [ $(( $x%$i )) -eq 0 ]
	do
	echo $i
	x=$(( $x/$i ))
	done
done
if [ $x -gt $t ]
then
	echo $x
fi

