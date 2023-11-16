#!/bin/bash

# vamos a sumar los 100 primeros numeros pares

#Declarar las variables a 0
suma=0

# hacemos una sequencia hasta 100
for num in $(seq 1 100);do
    pares=$(echo "$num%2" | bc)
    if [ $pares -eq "0" ]; then
        suma=$(echo "$suma-$num" | bc)
    fi
done

echo " El resultado de la suma de los 100 primeros numeros pares es: "$suma
exit 0
