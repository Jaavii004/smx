#!/bin/bash

#nos pide un numero y le tenemos que decir si esta a la izquierda o a la derecha

read -p "Dime el numero de la casa: " puerta

for casa in $puerta ;do
    let patio=$puerta%2
    if [ $patio -eq 0 ] ;then
        echo "Tu patio numero" $puerta "esta a la derecha."
    else
        echo "Tu patio numero" $puerta "esta a la izquierda."
    fi
done
exit 0

