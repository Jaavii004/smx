#!/bin/bash

read -p "Que palabra te gustaria que buscara: " tupri

palabra=$(dmesg|grep "$tupri"|wc -w)

if [ $palabra -gt 2 ]; then
    echo "Aparece mas de dos veces en el arranque."
else
    echo "Aparece menos de dos veces en el arranque."
fi
exit 0
