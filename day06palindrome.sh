#!/bin/bash -x
function palin () {
	s=0
	rev=""
	temp=$1
	while [ $1 -gt 0 ]
	do
		s=$(( $1 % 10 ))
		$1=$(( $1 / 10 ))
		rev=$(echo ${rev}${s} )
	done
	if [ $temp -eq $rev ]
	then 
		echo "Palindrome"
	else
		echo "Not a Palindrome"
	fi
}

palin 545 


 
