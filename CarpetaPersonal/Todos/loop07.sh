#!/bin/bash

#nos pide un numero y le tenemos que decir si esta a la izquierda o a la derecha

read -p "Dime el numero de la casa: " casa

let patio=$casa%2

if [ $patio -eq 0 ] ;then
    echo "Derecha"
else
    echo "Izquierda"
fi

exit 0

