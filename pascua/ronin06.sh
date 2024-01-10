#!/bin/bash
#declaro el array
declare -a rutas=(1 /root /home /var)
#pongo el numero en la ruta para que entre al bucle
ruta=0
#hasta que el numero no este entre 1 y 3 no saldra del bucle
while ! [ $ruta -ge 1 -a $ruta -le 3 ]; do
    echo "1) root"
    echo "2) home"
    echo "3) var"
    echo "Escribe el numero porfavor"
    read -p "Elige entre las rutas instritas " ruta
done
#limpio la pantalla para que se vea mejor la siguiente informacion
clear
#miro cual ha elegido y lo muestro a continuacion
elegida=${rutas[ruta]}
echo "Has elegido: "$elegida" y estos son los ususarios que se encuentran en esa ruta."
#Muestro los usuarios con esa ruta
cat /etc/passwd | grep $elegida | cut -d ":" -f1
exit 0
