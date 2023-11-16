#!/bin/bash

# compruebo si has puesto algun argumento
if [ $# -ge 1 ]; then
    if [ -d $1 ]; then
        ls=$(ls $1)
        ruta=$(echo $1"/")
    else
        echo " El directorio introducido no es correcto vay a hacerlo del directorio actual"
        ls=$(ls)
    fi
else
    ls=$(ls)
fi

for i in $ls ; do
    if [ -d "$ruta"$i ]; then
        echo " "$i" -> Es un directorio "
    fi
    if [ -f "$ruta"$i ]; then
        echo -n " "$i" -> Es un archivo"
        if [ -x $i ]; then
            echo -n " y tiene permisos de ejecucion"
        else
            echo -n " pero no tiene permisos de ejecucion"
        fi
        echo
    fi
done

exit 0
