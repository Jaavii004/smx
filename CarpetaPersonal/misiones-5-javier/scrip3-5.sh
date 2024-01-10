#!/bin/bash

#Autor:Javier Puertas
#mi tercer scrip

palabra= dmesg|grep "scsi"|wc -l

echo $palabra

if [ $palabra <10 ] ;then

    echo “Hemos pasado”
else

    if [ $palabra <10 ]; then
        echo “una decena”
    else

        echo “no llegamos a 10”

    fi


fi

exit 0
