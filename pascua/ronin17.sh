#!/bin/bash
#saco los multiplos de 13 y 3
echo "Estos son los multiplos de 13 y 3:"
for numeros in $(seq 100 300); do
    let resultado=$numeros%13
    let resultado2=$numeros%3
    if [ $resultado -eq 0 -a $resultado2 -eq 0 ];then
        echo $numeros
    fi
done

exit 0


