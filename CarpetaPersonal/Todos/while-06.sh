#!/bin/bash
#tiene que existir el archivo
condision=yes
archivo="/tmp/if-I-exit-I-stop"

while [ $condision = yes ]; do
    if ! [ -d $archivo ]; then
        echo "espera"
        sleep 2
        condision=no
    else
        condision=no
    fi
done

exit 0
