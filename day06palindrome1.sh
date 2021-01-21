#!/bin/bash -x
function palin () { 
# store single digit
sd=0
num=$1
echo $num
 
# store number in reverse order
rev=""
 
# store original number
on=$num
z=0 
while [ $num -gt $z ]
do
    sd=$(( $num % 10 )) # get Remainder 
    num=$(( $num / 10 ))  # get next digit
    # store previous number and current digit in reverse 
    rev=$rev$sd 
done
 
if [ $on -eq $rev ]
then
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi
}
palin 666
