#!/bin/bash
#combruebo si existen para moistrar un mensaje u otro
comprobar=$(cat /etc/passwd | grep $1 | wc -l)
if [ $comprobar -eq 0 ]; then
    #si no existe muestro este mensaje
    echo "No existe ningun usuario en ese grupo."
else
    #si existe muestro este con los usuarios
    echo "Los usuarios de ese grupo son:"
    cat /etc/passwd | grep $1 | cut -d ":" -f1
fi

exit 0
