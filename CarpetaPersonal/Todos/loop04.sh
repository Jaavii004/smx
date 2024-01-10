#!/bin/bash

#tablas de multiplicar 1 al 17
#El autor es javier puertas
echo
echo "=========================TABLAS DE MULTIPLICAR DEL 1 AL 17========================="
echo
sleep 3

for tablas in $(seq 1 17) ; do
    for num in $(seq 1 10) ; do
       let multiplicados=num*tablas
           echo $tablas"x"$num"="$multiplicados
    done
echo
done

exit 0
