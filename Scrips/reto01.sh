#!/bin/bash
# Convertir el siguiente bucle for en un bucle while

read -p "Dime cuanta vida tienes: " vida

# Veces que hemos matado al goblin
veces=0
#sleep 0.1
numm=1
while [ 1000 ]; do
    # Hacemos una tirada de dado de 10 caras
    let num=$RANDOM%10
 #sleep 0.8
    if [ $num -ge 2 ]; then
        echo "Has superado la tirada de habilidad. Matas al goblin."
        let veces=veces+1
    else
        let vida=vida-num
        echo "El goblin te golpea, y te quedan "$vida" puntos."
    fi

done

echo
echo "Te has quedado con "$vida" puntos de vida."
echo "Has matado al goblin "$veces"."

exit 0
