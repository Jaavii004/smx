#!/bin/bash

rc=0
showmount -e 192.168.1.177 | grep -iq nfs || rc=1

if [ $rc -eq 0 ]; then
    echo " El directorio existe"
else
    echo " ** [ ERROR ] El directorio no existe "
    echo " Vamos a crearlo"
    mount 192.168.1.177:/srv/ /srv/mount-point/
    logger -s " Montamos la carpeta "
fi

exit 0
