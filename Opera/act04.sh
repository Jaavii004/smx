#!/bin/bash

carpetas=(Gallop Carmina 1812)
users=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone conductor)
grupos=(woodwind woodwind metalwind metalwind strings strings strings strings percussion percussion conductor)
id=$(id -u)
repe=0
strings=(fiddle viola cello doublebass)
conductor=(piccolo clarinet horn trunk fiddle viola cello doublebass battery xylophone)

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
            fi
            echo $i > /srv/sox/$l/$i.txt
            if [ $l = "Gallop" ]; then
                if [ $grupo1 = "strings" ]; then
                    for k in ${strings[@]}; do
                        echo $k >> /srv/sox/$l/$i.txt
                    done
                fi
            fi
            if [ $l = "Carmina" ]; then
                if [ $i = "conductor" ]; then
                    echo $i > /srv/sox/$l/$i.txt
                    for p in ${conductor[@]}; do
                        cat /srv/sox/$l/$p.txt >> /srv/sox/$l/$i.txt
                    done
                fi
            fi
            chmod g-x /srv/sox/$l/$i.txt
            ((repe++))
            chown $i:$grupo1 /srv/sox/$l/$i.txt
            setfacl -m u:conductor:r /srv/sox/$l/$i.txt
        done
        if [ $l = "1812" ]; then
                for i in ${users[@]}; do
                    if [ -f /home/$i/.bash_history ]; then
                        cat /home/$i/.bash_history >> /srv/sox/$l/$i.txt
                    fi
                done
        fi
    done
fi

exit 0



