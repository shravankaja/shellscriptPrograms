#!/bin/bash -x
winT=0
winH=0
elv=11
while [ $winT -le $elv ] | [ $winH -le $elv ]
do
        rand=$(($RANDOM%2))
	
	if [ $rand -eq 0 ]
	then
		winT=$(( $winT+1 ))
		if [ $winT -eq $elv]
		then
			break
		fi
		echo "Tails"
	else
		 winH=$(( $winH+1 ))
		 if [ $winH -eq $elv]
                then
			break
                  fi
                echo "Heads"
	fi
done



