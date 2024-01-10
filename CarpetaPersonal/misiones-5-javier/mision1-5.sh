#!/bin/bash

#mision1-5
#autor:Javier

archivo="/tmp/kazajistan/tyuratam/baikonur/sputnik.txt"

if [ -e "$archivo" ] ; then

    echo "Ready for launch"

else
    mkdir "$archivo"

fi

exit 0
