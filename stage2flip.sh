#!/bin/bash -x
cflip=$(($(($RANDOM%10))%2))
if [ $cflip -eq 1 ];then
    echo "heads"
else
    echo "tails"
fi
