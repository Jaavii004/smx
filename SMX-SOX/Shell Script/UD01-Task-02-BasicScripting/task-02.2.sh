#!/bin/bash

for i in $(seq 1 301);do
    let comprobar_par=i%2
    if [ $comprobar_par -eq 0 ];then
        let comprobar_multiplo=i%13
        if [ $comprobar_multiplo -eq 0 ]; then
            let suma=i+suma
        fi
    fi
done

echo "La suma total de los numeros pares y ademas multiplos de 13 es: "$suma

exit 0