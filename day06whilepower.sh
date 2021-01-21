#!/bin/bash -x
read x
i=0
tw=2
while [ $i -lt $x ]
do
	sq=$(( $i**$tw ))
	echo $sq 
	i=$(( $i + 1 ))
done
	 
