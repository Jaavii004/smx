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
read -p "-EQUIPO: " equipo
read -p "-AÑO DE CREACION: " creacion
read -p "-PRESIDENTE: " presidente
echo "La liga que se disputa es primera=1, segunda=2, tercera=3."
read -p "-LIGA QUE DISPUTA: " liga
equipo=$(echo $equipo | sed 's/ /_/g')
creacion=$(echo $creacion | sed 's/ /_/g')
presidente=$(echo $presidente | sed 's/ /_/g')
liga=$(echo $liga | sed 's/ /_/g')

comprobar=$(echo $equipo $creacion $presidente $liga)

for repes in $comprobar; do
    ((vez ++))
done
    if [ $vez = 4 ]; then
        echo $equipo $creacion $presidente $liga >> ./basededatos.txt
        clear
        echo "SE HA AÑADIDO EXITOSAMENTE."
        cat basededatos.txt | sed 's/_/ /g'
    else
        echo "Te ha faltado algun dato intentalo de nuevo."
    fi

exit 0
