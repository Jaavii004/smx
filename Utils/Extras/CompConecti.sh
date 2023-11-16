#!/bin/bash

Rc=0
while ! [ $Rc -eq 1 ];do
    ping -qc 1 8.8.8.8 2> /dev/null >> /dev/null
    if [ $? -eq 1 ]; then
        echo "NO tienes conexion a internet"
        Rc=0
        sleep 2
    else
        echo "Tienes conexion a internet"
        Rc=1
    fi
done
exit 0
