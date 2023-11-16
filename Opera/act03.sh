#!/bin/bash

users=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone conductor)
grupos=(woodwind woodwind metalwind metalwind strings strings strings strings percussion percussion conductor)
id=$(id -u)
carpetas=(Nocturns Fratres Adagio DeProfundis)

if [ $id -eq 0 ]; then
    echo " * Hola Root"
    for l in ${carpetas[@]};do
        repe=0
        if [ -d /srv/sox/$l ]; then
            echo " * La carpeta /srv/sox/$l esta creada"
        else
            echo " * La carpeta /srv/sox/$l no esta creada vamos a crearla"
            mkdir -p /srv/sox/$l
        fi
        for i in ${users[@]}; do
            grupo1=$(echo ${grupos[$repe]})
            if [ -f /srv/sox/$l/$i.txt ];then
                echo -e "   · El fichero \033[1;32m/srv/sox/$l/$i.txt\033[00;00m existe"
            else
                echo -e "   · El fichero \033[0;31m/srv/sox/$l/$i.txt\033[00;00m no existe vamos a crearlo"
                touch /srv/sox/$l/$i.txt
                echo $i > /srv/sox/$l/$i.txt
            fi
            chmod 640 /srv/sox/$l/$i.txt
            ((repe++))
            chown $i:$grupo1 /srv/sox/$l/$i.txt
            setfacl -m u:conductor:rx /srv/sox/$l/$i.txt
        done
    done

    for l in ${carpetas[@]};do
        repe=0
        for i in ${users[@]}; do
            id -u $i >> /srv/sox/$l/$i.txt
            id -g $i >> /srv/sox/$l/$i.txt
        done
    done
    chown root:orchestra /srv/sox/Fratres
    chmod g+s /srv/sox/Fratres

    Nocturnos=$(find /srv/sox/Nocturns/ | grep ".txt")
    for N in ${Nocturnos[@]}; do
        touch -t "197701011010" $N
    done
    echo "Asi nos queda"
    tree -fpuga /srv/sox/

else
    echo " * ROOT tiene algo que decirte "
fi

exit 0
