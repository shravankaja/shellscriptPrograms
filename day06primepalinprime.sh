#!/bin/bash 
function prime () {
x=$1
i=2
f=0
while [ $i -le $(( $x/2 )) ]
do
if [ $(( $x%$i )) -eq 0 ]
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
}
function palin () {

sd=0
num=$1
echo $num
rev=""

on=$num
z=0
while [ $num -gt $z ]
do
    sd=$(( $num % 10 )) 
    num=$(( $num / 10 ))
    rev=$rev$sd
done

if [ $on -eq $rev ]
then
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi
}
function palinprime () {
sd=0
num=$1
echo $num
rev=""

on=$num
z=0
while [ $num -gt $z ]
do
    sd=$(( $num % 10 ))
    num=$(( $num / 10 ))
    rev=$rev$sd
done

if [ $on -eq $rev ]
then
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi
x=$rev
i=2
f=0
while [ $i -le $(( $x/2 )) ]
do
if [ $(( $x%$i )) -eq 0 ]
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
}


prime 98
palin 545
palinprime 99
