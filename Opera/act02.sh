#!/bin/bash

users=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone conductor)
grupos=(woodwind woodwind metalwind metalwind strings strings strings strings percussion percussion conductor)
Directorios=(Sinfonietta Saturn Unfinished Valkyries)
id=$(id -u)

if [ $id -eq 0 ]; then
    echo " * Te has logueado como superusuario"
    for l in ${Directorios[@]}; do
        repe=0
        if [ -d /srv/sox/$l ];then
            echo -e " * La carpeta \033[1;32m/srv/sox/"$l"\033[00;00m existe"
        else
            echo -e " * La carpeta \033[0;31m/srv/sox/"$l"\033[00;00m no existe vamos a crearla"
            mkdir -p /srv/sox/$l
        fi
        for i in ${users[@]}; do
            grupo1=$(echo ${grupos[$repe]})
            if [ -f /srv/sox/$l/$i.txt ];then
                echo -e "   · El fichero \033[1;32m/srv/sox/$l/$i.txt\033[00;00m existe"
            else
                echo -e "   · El fichero \033[0;31m/srv/sox/$l/$i.txt\033[00;00m no existe vamos a crearlo"
                if [ $l = "Valkyries" ]; then
                    echo "The swift Indian bat happily ate cardillo and kiwi, while the stork played the saxophone behind the straw hut" >> /srv/sox/$l/$i.txt
                else
                    echo $i >> /srv/sox/$l/$i.txt
                fi
            fi
            ((repe++))
            chown $i /srv/sox/$l/$i.txt
            chgrp $grupo1 /srv/sox/$l/$i.txt
            setfacl -m u:conductor:rx /srv/sox/$l/$i.txt
            chmod o+x /srv/sox/$l/$i.txt
        done
    done
    if [ -f /srv/sox/Sinfonietta/TheSilencio.txt ]; then
        echo -e "   · El archivo \033[1;32m/srv/sox/Sinfonietta/TheSilencio.txt\033[00;00m existe"
    else
        echo -e "   · El archivo \033[0;31m//srv/sox/Sinfonietta/TheSilencio.txt\033[00;00m no existe"
        touch /srv/sox/Sinfonietta/TheSilencio.txt
        chmod 777 /srv/sox/Sinfonietta/TheSilencio.txt
    fi
else
    echo " * Debes loguearte como superusuario"
fi

exit 0
