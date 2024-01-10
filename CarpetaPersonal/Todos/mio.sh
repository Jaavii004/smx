#!/bin/bash

read -p "Dime cuanta vida tienes: " vida
veces=0



 let num=$RANDOM%10

    if [ $num -ge 2 ]; then
        echo "Has superado la tirada de habilidad. Matas al goblin."
        let veces=veces+1
    else
        let vida=vida-num
        echo "El goblin te golpea, y te quedan "$vida" puntos."
    fi
