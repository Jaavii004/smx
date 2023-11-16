#!/bin/bash

DirCrear=(Mercury Venus Mars Jupiter Saturn Uranus Neptune)

if [ $# -ge 2 ]; then
    rc=0
    cat /etc/passwd | cut -d ":" -f1 | grep -q "^$1$" || rc=1
    if [ $rc -eq 0 ]; then
        echo -e " * El usuario \033[1;32m"$1" \033[00;00mexiste"
        case $2 in
        "replenish")
            echo -e " * Has elegido:\033[1;32m replenish \033[00;00m"
            if ! [ -d /home/$1/SolarSystem ];then
                echo -e " - Creando carpeta\033[1;34m SolarSystem\033[00;00m"
            else
                echo -e " - Ya esta creada carpeta\033[1;34m SolarSystem\033[00;00m"
            fi
            for i in ${DirCrear[@]}; do
                if ! [ -d /home/$1/SolarSystem/$i ];then
                    echo -e " - Creando carpeta \033[1;34m"$i" \033[00;00m"
                else
                    echo -e " - Ya esta creada carpeta \033[1;34m"$i" \033[00;00m"
                fi
                ((incremen++))
                mkdir -p /home/$1/SolarSystem/$i
                if [ $incremen -eq 5 ]; then
                    date=$(date +%Y%m%d-%H%M)
                    touch /home/$1/SolarSystem/$i/Environment-$1-$date.txt
                    echo -e "     · Archivo\033[1;20m Environment-$1-$date.txt\033[00;00m creado en /home/$1/SolarSystem/$i/"
                else
                    touch /home/$1/SolarSystem/$i/control-planet.txt
                    echo -e "     · Archivo\033[1;20m control-planet.txt\033[00;00m creado en /home/$1/SolarSystem/$i/"
                fi
            done
        ;;
        "test")
            echo -e " * Has elegido:\033[1;32m test \033[00;00m"
            if [ $# -eq 3 ]; then
                rl=0
                echo $3 | grep -q ^/home/.*/SolarSystem* ||rl=1
                if [ -d $3 -a $rl -eq 0 ]; then
                    echo -e " * La carpeta \033[0;32mexiste\033[00;00m y esta en el \033[0;32mlugar adecuado\033[00;00m"
                    archivos=$(find $3 -user $1 -perm /u=r)
                    echo " * El usuorio "$1" tiene permisos de lectura sobre: "
                    for l in $archivos; do
                        if [ -d $l ]; then
                            echo -e "    La carpeta \033[1;34m"$l" \033[00;00mtiene permisos de lectura"
                        else
                            echo -e "    El archivo \033[1;20m"$l"\033[00;00m tiene permisos de lectura"
                        fi
                    done
                else
                    echo -e " * \033[0;31mLa carpeta no existe o no es valida\033[00;00m"
                fi
            else
                echo " * Debes introducir 3 argumentos"
            fi
        ;;
        "clean")
            echo -e " * Has elegido:\033[1;32m clean \033[00;00m"
            if [ $# -eq 3 ]; then
                ra=0
                echo $3 | grep -q ^/home/.*/SolarSystem* ||ra=1
                if [ -d $3 -a $ra -eq 0 ]; then
                    echo -e " * La carpeta \033[0;32mexiste\033[00;00m y esta en el \033[0;32mlugar adecuado\033[00;00m"
                    rm -rfd $3
                    echo -e " * Eliminado con exito"
                else
                    echo -e " * \033[0;31mLa carpeta no existe o no es valida\033[00;00m"
                fi
            else
                echo " * Debes introducir 3 argumentos"
            fi
        ;;
        *)
            echo " * La cadena debe de ser: replenish, test o clean"
        ;;
        esac
    else
        echo -e " * \033[0;31mEl usuario "$1" no existe\033[00;00m"
    fi
else
    echo -e " * \033[0;31mDebes introducir al menos 2 argumentos\033[00;00m"
fi

exit 0
