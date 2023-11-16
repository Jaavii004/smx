#!/bin/bash

read -p "De que equipo quieres saber el año de creacion,presidente actual y liga que disputa: " pregunta
cat basededatos.txt | while read lineas; do
    repe=0
    condicion=0
    for respuesta in $lineas; do
        ((repe ++))
        preguntas=$(echo $pregunta | sed 's/ /_/g')
        respuestas=$(echo $respuesta | awk '{print tolower ($0)}')
        pregunta1=$(echo $preguntas | awk '{print tolower ($0)}')
        if [ $respuestas = $pregunta1 ]; then
            condicion=1
        fi
        if [ $condicion = 1 ];then
            mostrar=$(echo $respuesta | sed 's/_/ /g')
            mostrar=$(echo $mostrar | awk '{print toupper ($0)}')
            if [ $repe = 1 ]; then
                echo "El equipo que has elegido es: "$mostrar
            fi
            if [ $repe = 2 ]; then
                echo "El año de fundacion del club que has elegido es: "$mostrar
            fi
            if [ $repe = 3 ]; then
                echo "El presidente del club que has elegido es: "$mostrar
            fi
            if [ $repe = 4 ]; then
                echo "El club que has elegido juega en "$mostrar"ª Divion."
            fi
        fi
    done


done

exit 0
