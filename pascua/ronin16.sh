#!/bin/bash
#saco los multiplos de 12
echo "Estos son los multiplos de 12:"
for numeros in $(seq 80 160); do
    let resultado=$numeros%12
    if [ $resultado -eq 0 ];then
        echo $numeros
    fi
done

exit 0


