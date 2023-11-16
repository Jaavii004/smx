#!/bin/bash
clear
echo "__________________________________"
echo "|     CATEGORIAS      |  NUMERO  |"
echo "|---------------------|----------|"
echo "|      CHAMPIONS      |    1     |"
echo "|---------------------|----------|"
echo "|        LIGAS        |    2     |"
echo "|---------------------|----------|"
echo "|     COPAS DEL REY   |    3     |"
echo "|---------------------|----------|"
echo "|     EUROPA LEAGUE   |    4     |"
echo "|---------------------|----------|"
echo "| SUPERCOPA DE EUROPA |    5     |"
echo "|---------------------|----------|"
echo "| SUPERCOPA DE ESPAÑA |    6     |"
echo "|---------------------|----------|"
echo "|  TODOS LOS TITULOS  |    7     |"
echo "|_____________________|__________|"
echo
read -p "Elige lo que quieres que te muestre: " muestra
clear
echo "Has elegido la opcion "$muestra"."
read -p "De que equipo quieres que te muestre la informacion que as pedido: " pregunta

cat basededatos.txt | while read lineas; do
    repe=0
    condicion=0
    for respuesta in $lineas; do
        ((repe ++))
        preguntas=$(echo $pregunta | sed 's/ /_/g')
        respuestas=$(echo $respuesta | awk '{print tolower ($0)}')
        pregunta1=$(echo $preguntas | awk '{print tolower ($0)}')
        if [ $pregunta1 = $respuestas ]; then
            condicion=1

        fi
        if [ $condicion = 1 ]; then
            mostrar=$(echo $respuesta | sed 's/_/ /g')
            mostrar=$(echo $mostrar | awk '{print toupper ($0)}')

            case $muestra in
            1)
                if [ $repe = 1 ]; then
                    echo "El equipo que has elegido es: "$mostrar
                fi
                if [ $repe = 2 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" champions."
                fi
            ;;
            2)
                if [ $repe = 1 ]; then
                    echo "El equipo que has elegido es: "$mostrar
                fi
                if [ $repe = 3 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" ligas."
                fi
            ;;
            3)
                if [ $repe = 1 ]; then
                    echo "El equipo que has elegido es: "$mostrar
                fi
                if [ $repe = 4 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" copas del rey."
                fi
            ;;
            4)
                if [ $repe = 1 ]; then
                    echo "El equipo que has elegido es: "$mostrar
                fi
                if [ $repe = 5 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" europa league."
                fi
            ;;
            5)
                if [ $repe = 1 ]; then
                    echo "El equipo que has elegido es: "$mostrar
                fi
                if [ $repe = 6 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" supercopas de europa."
                fi
            ;;
            6)
                if [ $repe = 1 ]; then
                    echo "El equipo que has elegido es: "$mostrar
                fi
                if [ $repe = 7 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" supercopa de españa."
                fi
            ;;
            7)
                if [ $repe = 1 ]; then
                    echo "El equipo que has elegido es: "$mostrar
                fi
                if [ $repe = 2 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" champions."
                fi
                if [ $repe = 3 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" ligas."
                fi
                if [ $repe = 4 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" copas del rey."
                fi
                if [ $repe = 5 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" europa league."
                fi
                if [ $repe = 6 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" supercopas de europa."
                fi
                if [ $repe = 7 ]; then
                    echo "El equipo que has eleguido tiene "$mostrar" supercopa de españa."
                fi
            ;;
            *)
                echo "Lo siento pero no has elegido ninguna opcion correcta."
            esac
        fi
    done


done

exit 0
