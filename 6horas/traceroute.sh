#!/bin/bash

if [ -f primera ]; then
    rm primera
fi
if [ -f redes.csv ]; then
    rm redes.csv
fi
echo "URL,ejecucion,tiempo" >> redes.csv
while read tracert; do
    traceroute -q1 $tracert > primera
    linias=0
    liniaa=0
    while read lineas; do
        ((liniaa ++))
        if [ $liniaa -gt "1" ]; then 
            ((linias ++))
            lineas=$(echo "$lineas" | tr '*' ')' )
            tiempo=$(echo "$lineas" | cut -d ")" -f2 | cut -d "m" -f1 )
            echo $tracert","$linias","$tiempo >> redes.csv
        fi
    done < primera 
done < urls.txt
echo "Se a realizado correctamente."
echo "Se a guardado en el archivo redes.csv"
if [ -f primera ]; then
    rm primera
fi

exit 0