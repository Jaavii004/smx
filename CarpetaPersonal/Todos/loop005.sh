#!/bin/bash

#la suma de los 1000 primeros numeros enteros
echo
echo "====================SUMA DE LOS 1000 PRIMEROS NUMEROS ENTEROS===================="
echo
sleep 3

for suma in $(seq 1 1000) ; do
    let sum=suma+num
    echo $num"+"$suma"="$sum
    echo
done

exit 0
