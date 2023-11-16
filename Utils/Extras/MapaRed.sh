#!/bin/bash

read -p " Que red quieres escanear? " Eleccion

mapa=$(nmap -n $Eleccion | grep for | cut -d " " -f5)
for i in $mapa; do
    echo -n "     "$i
    echo
done




exit 0
