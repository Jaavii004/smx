#!/bin/bash

numero=$(cat basededatos.txt | wc -l)
echo "AÑADIR UN EQUIPO ESPAÑOL A LA BASE DE DATOS"
echo
sleep 0.5
echo "EN LA BASE DE DATOS HAY" $numero "DE EQUIPOS."
echo
sleep 0.5
echo "NUEVO REGISTRO EN CURSO"
echo
echo "RECUERDA QUE SI NO HAN GANADO PONER 0."
read -p "-Equipo: " equipo
read -p "-Numero de champions: " champions
read -p "-Numero de ligas:  " ligas
read -p "-numero de copas del rey conseguidas: " rey
read -p "-Numero de europa league:  " league
read -p "-Numero de supercopa de europa:  " eurocopa
read -p "-Numero de supercopa de españa:  " espanya
equipo=$(echo $equipo | sed 's/ /_/g')
champions=$(echo $champions | sed 's/ /_/g')
ligas=$(echo $ligas | sed 's/ /_/g')
rey=$(echo $rey | sed 's/ /_/g')
league=$(echo $league | sed 's/ /_/g')
eurocopa=$(echo $eurocopa | sed 's/ /_/g')
espanya=$(echo $espanya | sed 's/ /_/g')

comprobar=$(echo $equipo $champions $ligas $rey $league $eurocopa $espanya)

for repes in $comprobar; do
    ((vez ++))
done
    if [ $vez = 7 ]; then
        echo $equipo $champions $ligas $rey $league $eurocopa $espanya >> basededatos.txt
        clear
        echo "SE HA AÑADIDO EXITOSAMENTE."
    else
        echo "Te ha faltado algun dato intentalo de nuevo."
    fi

exit 0
