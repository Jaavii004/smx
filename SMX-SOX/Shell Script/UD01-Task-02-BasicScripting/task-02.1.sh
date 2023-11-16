#!/bin/bash

for i in $(seq 1 301);do
    let comprobar=i%2
    if [ $comprobar -eq 0 ];then
        let suma_par=i+suma_par
    fi
done

echo "La suma total de los numeros pares es: "$suma_par

exit 0