#!/bin/bash
#inicializo la variable
veces=0
echo "Estos son los numeros de entre el 100 144 y se mostraran los pasos de 3:"
for numeros in $(seq 100 144); do
    #va a mostar cada 3 numeros
    if [ $veces -eq 3 ]; then
        echo $numeros
        veces=0
        sleep 0.5
    fi
    #lo pongo al final para que salgan bien
    ((veces ++))
done

exit 0
