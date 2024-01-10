#!/bin/bash
#obtengo la fecha
fecha=$(date +%Y%m%d)
#compruebo si exise el directorio o no
if [ -d $HOME/test-permissions-$fecha ]; then
    echo "La fecha de hoy es "$fecha
    echo -e "\n""Archivos que pueden ser leidos por Otros:""\n"
    find ~/test-permissions-$fecha/ -perm -004
    echo -e "\n""Archivos que pueden ser leidos por el Usuario""\n"
    find ~/test-permissions-$fecha/ -perm -400
    #te añado este de extra
    echo -e "\n""Archivos que pueden ser leidos escritos y ejectudas por todos:""\n"
    find ~/test-permissions-$fecha/ -perm -777
    echo
else
    echo "DIRECORY NOT FOUND FOR TODAY"
fi

exit 0
