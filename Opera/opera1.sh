#!/bin/bash

users=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone conductor)
grupos=(woodwind woodwind metalwind metalwind strings strings strings strings percussion percussion conductor)
id=$(id -u)
increm=0

if [ $id -eq 0 ]; then
    echo " * Te has logueao como superusuario"
    ro=0
    cat /etc/group | cut -d ":" -f1 | grep -q "^orchestra$" || ro=1
    if [ $ro -eq 0 ]; then
        echo -e " * El grupo \033[1;32morchestra \033[00;00mexiste"
    else
        groupadd -f orchestra
        echo -e " * El grupo \033[0;31morchestra\033[00;00m no existe"
        echo " * Creamos el grupo orchestra"
    fi
    for i in ${users[@]}; do
        rc=0
        cat /etc/passwd | cut -d ":" -f1 | grep -q "^$i$" || rc=1
        if [ $rc -eq 0 ]; then
            echo -e " * El usuario \033[1;32m"$i" \033[00;00mexiste"
        else
            echo -e " * \033[0;31mEl usuario "$i" no existe , vamos a crearlo\033[00;00m "
            useradd -N  -p $(mkpasswd "1234") >/dev/null $i 2>/dev/null
            adduser $i --home /home/$i >/dev/null 2>/dev/null
            usermod -s "/bin/bash" $i >/dev/null 2>/dev/null
            if [ ! -d /home/$i/ ]; then
                mkhomedir_helper $i >/dev/null 2>/dev/null
            fi
        fi
        grupo=$(echo ${grupos[$increm]})
        rl=0
        cat /etc/group | cut -d ":" -f1 | grep -q "^$grupo$" || rl=1

        if [ $rl -eq 0 ]; then
            echo -e " * El grupo \033[1;32m"$grupo" \033[00;00mexiste"
        else
            groupadd -f $grupo
            echo -e " * El grupo \033[0;31m"$grupo"\033[00;00m no existe"
            echo " * Creamos el grupo "$grupo
        fi
        adduser -q $i $grupo >/dev/null  2>/dev/null
        adduser -q $i orchestra >/dev/null  2>/dev/null
        ((increm++))
        echo -e "   · Añadido el usuario \033[1;32m"$i"\033[00;00m al grupo \033[1;32m"$grupo"\033[00;00m"
        echo -e "   · Añadido el usuario \033[1;32m"$i"\033[00;00m al grupo \033[1;32morchestra\033[00;00m"
    done
    carpetas=(TheGreatGateOfKiev BlueDanube NewWorldSymphonie TheJazzSuite)
    for l in ${carpetas[@]}; do
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
                echo $i >> /srv/sox/$l/$i.txt
            fi
            ((repe++))
            chown $i /srv/sox/$l/$i.txt
            chgrp $grupo1 /srv/sox/$l/$i.txt
            setfacl -m u:conductor:rx /srv/sox/$l/$i.txt
        done
    done
else
    echo " * Debes loguearte como superuser"
fi

exit 0
