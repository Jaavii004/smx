#!/bin/bash

ruta1=$1
ruta2=$2
if [ $# -eq 2 ]; then
    rm -rf  ArchivoNuevos

    diff -rq $ruta1 $ruta2 | cut -d " " -f3- >> ArchivoNuevos


    cat ArchivoNuevos | while read line ; do
        carpeta=$(echo $line | cut -d ":" -f1)
        archivo=$(echo $line | cut -d ":" -f2)
        echo "La carpeta "$carpeta" tiene diferente este archivo: "$archivo
    done
else
    echo "Necesitamos 2 argumentos"
fi

exit 0
