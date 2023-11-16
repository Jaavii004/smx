#/bin/bash

TestPath=$1

if [ $# -eq 1 ]; then
    if [ -f $TestPath -o -d $TestPath ]; then
        echo " -- "$TestPath" : Existe el directorio"
    else
        echo " -- "$TestPath" : No existe el directorio"
    fi
else
    echo " ** [ warning ] : Tienes que poner un argumento $(basename $0) ARGS **"
fi

exit 0
