#/bin/bash

TestPath=$1
rc=0

echo $TestPath | grep ^/  || rc=1

if [ $# -eq 1 ]; then
    if [ $rc -eq 1 ]; then
        echo " -- "$TestPath" : No es una ruta absoluta"
    else
        echo " -- "$TestPath" : Es una ruta absoluta "
    fi
else
    echo " ** [ warning ] : Tienes que poner un argumento $(basename $0) ARGS **"
fi

exit 0
