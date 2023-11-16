#/bin/bash

TestPath=$1

if [ $# -eq 1 ]; then
    if [ -f $TestPath ]; then
        echo "El archivo para comprobar es: "$TestPath
        archivo=$(ls -l $TestPath)
        comprobacionLeer=$(echo ${archivo:1:1})
        comprobacionEscri=$(echo ${archivo:1})
        comprobacionEscri1=$(echo ${comprobacionEscri:1:1})
        comprobacionEje=$(echo ${archivo:2})
        comprobacionEje1=$(echo ${comprobacionEje:1:1})

        if [ $comprobacionLeer = "r" ]; then
            echo "El usuario tiene permiso para leer el archivo"
        else
            echo "El usuario no tiene permiso para leer el archivo"
        fi

        if [ $comprobacionEscri1 = "w" ]; then
            echo "El usuario tiene permiso para escribir el archivo"
        else
            echo "El usuario no tiene permiso para escribir el archivo"
        fi

        if [ $comprobacionEje1 = "x" ]; then
            echo "El usuario tiene permiso para ejecutar el archivo"
        else
            echo "El usuario no tiene permiso para ejecutar el archivo"
        fi
        
    fi
fi
exit 0

