#!/bin/bash
#pregunto
read -p "Dime un nombre de usuario: " usuario
#saco si el usuario existe para mostrar un mensaje u otro
numero=$(cat /etc/passwd | cut -d ":" -f1 | grep -i $usuario | wc -l)

if [ $numero -eq 0 ]; then
    echo "No hay ningun usuario con ese nombre ni que empieze por ese nombre"
else
    echo "Estos son los usuarios."
    #muestro los usuarios si los hay
    cat /etc/passwd | cut -d ":" -f1 | grep -i $usuario
fi

exit 0
