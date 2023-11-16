#!/bin/bash

users=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone conductor)
grupos=(woodwind metalwind strings percussion conductor orchestra)

for usu in ${users[@]}; do
    sudo userdel -f $usu
done

for grupo in ${grupos[@]}; do
    sudo groupdel -f $grupo
done

exit 0