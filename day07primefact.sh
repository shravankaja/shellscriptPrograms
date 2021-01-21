x#!/bin/bash
read x
z=0
t=2 
while [ $(( $x%$t )) -eq $z ]
do
        arr+=$t
        x=$(( $x/$t ))
done
for (( i=3 ; $i<=$sqrt($x) ; i=i+2 ))
do
        while [ $(( $x%$i )) -eq 0 ]
        do
        arr+=$i
        x=$(( $x/$i ))
        done
done
if [ $x -gt $t ]
then
        arr+=$x
fi
for i3 in "${arr[@]}"
do
    # access each element  
    # as $i 
    echo -n $i3 
done



