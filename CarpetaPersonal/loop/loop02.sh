#!/bin/bash

#mi segundo bucle
#Autor:Javier Puertas
#multiplos de 13

echo "1 es multiplo de 13."

for mult in $(seq 1 100);do
    let multiplica=13*mult
    for multi in $(seq 1 500);do
        if [ $multiplica = $multi ]; then
            echo $multiplica "es multiplo de 13."
        fi
    done
done

exit 0
