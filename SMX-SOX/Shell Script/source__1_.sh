#!/bin/bash
permision=$(id -u)
numeros='^[0-9]$'
fecha=$(date +%Y%m%d.%H%M)


if [ $# -eq 1 ]; then 
    if ! [[ $1 =~ $numeros  ]]; then
        if [ $permision -eq 0 ]; then
            echo " Vamos a crear la copia de seguir."
            cp /etc/apt/sources.list /root/sources.list.$fecha.bak
            case $1 in
                senia)
                    echo " * Settings sources.list "
                    echo "deb http://tic.ieslasenia.org/ubuntu jammy main restricted universe multiverse" > /etc/apt/sources.list
                    echo "deb http://tic.ieslasenia.org/ubuntu jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
                    echo "deb http://tic.ieslasenia.org/ubuntu jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
                    echo "deb http://tic.ieslasenia.org/ubuntu jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list
                    echo " * Quitando mierda "
                    sudo apt purge appstream command-not-found
                    sudo dpkg --remove-architecture i386 >> /dev/null
                    sudo apt update
                    sudo apt full-upgrade --yes
                ;;
                home)
                    echo " * Settings sources.list "
                    echo "deb http://es.archive.ubuntu.com/ubuntu jammy main restricted universe multiverse" > /etc/apt/sources.list
                    echo "deb http://es.archive.ubuntu.com/ubuntu jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
                    echo "deb http://es.archive.ubuntu.com/ubuntu jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
                    echo "deb http://es.archive.ubuntu.com/ubuntu jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list
                    sudo apt update
                    sudo apt full-upgrade --yes
                ;;
                *)
                    echo " Debes poner una de estas dos:"
                    echo "     - senia"
                    echo "     - home"
                ;;
            esac
        else
             echo "Debes ejecutar el Script con permisos ROOT."
             echo "EJEMPLO"
             echo "======sudo ./NombreDelArchivo.sh======"
        fi
    fi
else
    echo "Debes poner un argumento tal que asi:"
    echo "EJEMPLO"
    echo "======sudo ./NombreDelArchivo.sh senia======"
fi

exit 0
