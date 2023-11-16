#!/bin/bash

# vamos a sumar los 100 primeros numeros pares

#Declarar las variables a 0
suma=0

# hacemos una sequencia hasta 100
for num in $(seq 1 100);do
    let pares=num%2
    if [ $pares -eq "0" ]; then
        let suma=suma+num
    fi
done

echo " El resultado de la suma de los 100 primeros numeros pares es: "$suma
exit 0
