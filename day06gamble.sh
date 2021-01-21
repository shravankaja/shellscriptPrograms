#!/bin/bash -x
mon=100
bet=1
while [ $mon -le 200 ]
do
	rand=$(($RANDOM%2))
	if [ $rand -eq 0 ]
	then
		echo "win"
		mon=$(( $mon + 1 ))
		if [ $mon -eq 200]
		then
			echo "Loot"
			break
		fi
	else
		echo "loose"
		mon=$(( $mon -1 ))
		if [ $mon -eq 0 ]
		then
			echo "go home"
			break
		fi
	fi
done
