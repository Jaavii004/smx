#!/bin/bash

#obtener el producto de los 50 primeros numeros impares

echo
echo "====================EL PRODUCTO DE LOS 50 PRIMEROS NUMEROS IMPARES===================="
echo
sleep 1

for impar in $(seq 1 50);do

    let impares=$impar%2

    if [ $impares -eq 1 ]; then
        echo "El numero" $impar "es impar."
    fi

done

exit 0
