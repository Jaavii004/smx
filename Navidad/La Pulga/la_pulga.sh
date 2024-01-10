#!/bin/bash

#vamos a hacer el juego de la pulga
#comprobamos si esta el archivo de los resultados
if [ -f resultado_pulga ]; then
    rm resultado_pulga
fi

#vamos a leer el archivo por lineas
cat pulga | while read lineas; do
    ((vez ++))
    #ajustamos todo el rato la repe para q funcione y cuente los numeros
    repe=0
    #vamos a entrar cuando ya ayamos pasado la linia de repeticiones
    if [ $vez -ge 2 ]; then
        #vamos a contar cada numero por separado
        for numero in $lineas; do
            ((repe ++))
            if [ $repe = 1 ]; then
                if [ $numero -ge 1 -a $numero -le 100 ]; then
                    uno=$numero
                fi
            fi
            if [ $repe = 2 ]; then
                if [ $numero -le 100 -a $numero -ge 1 ]; then
                    dos=$numero
                fi
            fi
            if [ $repe = 3 ]; then
                if [ $numero -ge 1 -a $numero -le 100000 ]; then
                    tres=$numero
                fi
            fi
            if [ $repe = 3 ]; then
                if [ $uno -ge $tres ]; then
                    let resultado=$dos*$tres
                    #vuelca el resultado a la terminal
                    echo $resultado
                    #vuelca el resultado a un fichero
                    echo $resultado >>resultado_pulga
                fi
                if [ $uno -lt $tres ]; then
                    let resultado=$tres-$uno-1
                    let resultado=$resultado*$dos
                    #vuelca el resultado a la terminal
                    echo $resultado
                    #vuelca el resultado a un fichero
                    echo $resultado >>resultado_pulga
                fi

            fi
        done
    fi

done

exit 0
