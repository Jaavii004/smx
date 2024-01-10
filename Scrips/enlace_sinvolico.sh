#!/bin/bash
enlace=$1
#compruebo que solo pone un argumento
if [ $# -eq 1 ]; then
    #miro si es un enlace simbolico
    simbolico=$(ls -l $enlace | awk '{print $1}' | grep "l" | wc -l)
    if [ $simbolico -eq 1 ]; then
        #miro si tiene los permisos de ejecucion lectura y escritura
        permisos=$(ls -l $enlace | awk '{print $1}' | cut -c 2-4)
        if [ $permisos = rwx ]; then
            echo $enlace" es un enlace simbolico y el propietario es el usuario actual."
        else
            echo "Es un enlace simbolico pero tiene permiso de ejecucion o lectura o escritura."
        fi
    else
        echo $enlace" No es un enlace simbolico."
    fi
else
    echo "Uso:"
    echo "<enlace que quieres comprobar si es simbolico y tuyo>"
fi




exit 0
