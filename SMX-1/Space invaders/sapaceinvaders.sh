#!/bin/bash

#para saber si es un numero o letra
es_numero='^[0-9]+$'
#leemos el archivo
cat sapaceinvaders | while read lineas; do
    #separa los caracteres en espacios
    linias=""
    liniass=$(echo $lineas | cut -b1)
    linias+="${liniass} "
    liniass=$(echo $lineas | cut -b2)
    linias+="${liniass} "
    liniass=$(echo $lineas | cut -b3)
    linias+="${liniass} "

    ((liniias ++))
    if ! [[ $lineas =~ $es_numero ]]; then
        pasa=0
        for palabra in $linias; do
             ((pasa ++))
             if [ $pasa = 1 ];then
                 palabra1+="${palabra}"
             fi
             if [ $pasa = 2 ];then
                 palabra2+="${palabra}"
             fi
             if [ $pasa = 3 ];then
                 palabra3+="${palabra}"
             fi
        done
    fi
    #muestra la palabra completa
    if [ $liniias = 7 ]; then
        echo $palabra1$palabra2$palabra3
    fi

done

exit 0
