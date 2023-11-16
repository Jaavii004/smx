#!/bin/bash

grupo=$(groups)
EsTrasgo=0
Ruta="$HOME/shared/smx2023.net/exam-ldap-nfs"
RutaSMB="$HOME/shared/smx2023.net/exam-ldap-smb"
ID=$(id | cut -d "(" -f1 | cut -d "=" -f2)
let compu=$ID%2

for i in $grupo ; do
    if [ $i = "trasgo" ]; then
        EsTrasgo=1
    fi
done

if [ $EsTrasgo -eq 1 ];then
    echo " - Te has logeado con trasgos"
    if [ -d $Ruta ]; then
        echo "  - La ruta "$Ruta": Ya existe la carpeta"
        mount -t nfs 192.168.5.122:/srv/nfs/exam-ldap-nfs/ $Ruta
    else
        mkdir -p $Ruta
        echo "  - La ruta "$Ruta": No existe --> Vamos a crearla"
        mount -t nfs 192.168.5.122:/srv/nfs/exam-ladp-nfs $Ruta
    fi
    if ! [ $compu -eq 0 ]; then
        echo "   - El usuario \""$USER"\" tiene el gid "$ID" por lo que es impar"
        if [ -d $RutaSMB ] ; then
            echo "  - La ruta "$RutaSMB": Ya existe la carpeta"
            mount -t cifs //192.168.5.121/samba-share  $RutaSMB -o username=javier,password=1234
        else
            mkdir -p $RutaSMB
            echo "  - La ruta "$RutaSMB": No existe --> Vamos a crearla"
            mount -t cifs //192.168.5.121/samba-share  $RutaSMB -o username=javier,password=1234
        fi
    fi
else
    echo " - No estas logeado con trasgos"
fi

exit 0
