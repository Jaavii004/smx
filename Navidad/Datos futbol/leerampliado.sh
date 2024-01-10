#!/bin/bash
clear
echo
echo "__________________________________"
echo "|     CATEGORIAS      |  NUMERO  |"
echo "|---------------------|----------|"
echo "|  AÑO DE CREACION    |    1     |"
echo "|---------------------|----------|"
echo "|  PRESIDENTE ACTUAL  |    2     |"
echo "|---------------------|----------|"
echo "|  LIGA QUE DISPUTA   |    3     |"
echo "|---------------------|----------|"
echo "|        TODO         |    4     |"
echo "|_____________________|__________|"
echo
read -p "Elige que quieres que te muestre: " muestra
read -p "De que equipo quieres lo que as elequido: " pregunta

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

            case $muestra in
            1)
                if [ $repe = 1 ]; then
                    echo "El equipo que has elegido es: "$mostrar
                fi
                if [ $repe = 2 ]; then
                    echo "El año de fundacion del club que has elegido es: "$mostrar
                fi
            ;;
            2)
                if [ $repe = 1 ]; then
                    echo "El equipo que has elegido es: "$mostrar
                fi
                if [ $repe = 3 ]; then
                    echo "El presidente del club que has elegido es: "$mostrar
                fi
            ;;
            3)
                if [ $repe = 1 ]; then
                    echo "El equipo que has elegido es: "$mostrar
                fi
                if [ $repe = 4 ]; then
                    echo "El club que has elegido juega en "$mostrar"ª Divion."
                fi
            ;;
            4)
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
            ;;
            *)
                echo "Lo siento pero no has elegido ninguna opcion correcta."
            esac
        fi
    done


done

exit 0
