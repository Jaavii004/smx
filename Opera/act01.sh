#!/bin/bash


users=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone conductor)
id=$(id -u)

if [ $id -eq 0 ]; then
    for i in ${users[@]}; do
        touch /srv/sox/TheGreatGateOfKiev/$i.txt

    done
fi

exit 0
