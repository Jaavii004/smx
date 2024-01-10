#!/bin/bash
fecha=$(date +%Y%m%d)
#aqui lo elimino para evitar que se dupliquen
if [ -d $HOME/test-permissions-* ]; then
    sudo rm -r $HOME/test-permissions-*
fi
#aqui me guardo todos los archivos para mas tarde crearlos
declare -a archivos=(onlyUserCanRead.txt onlyUserAndGroupCanRead.txt onlyUserAndOthersCanRead.txt onlyUserCanReadAndWrite.txt onlyUserAndGroupCanReadAndWrite.txt onlyUserAndOthersCanReadAndWrite.txt onlyUserAndOthersCanReadAndWrite.txt onlyUserAndOthersCanReadAndExecute.txt onlyUserAndGroupsAndOthersCanReadAndExecute.txt onlyUserAndGroupsAndOthersCanReadAndWriteAndExecute.txt)
#aqui me guardo todos los permisos
declare -a permisos=(400 440 404 600 660 606 606 505 555 777)

if ! [ -d $HOME/test-permissions-$fecha ]; then
    mkdir $HOME/test-permissions-$fecha
fi
cd $HOME/test-permissions-$fecha
#aqui voy a crear todos los archivos cambiando los permisos
for num_array in $(seq 0 9); do
    archivo=${archivos[$num_array]}
    permiso=${permisos[$num_array]}
    touch $archivo
    chmod $permiso $archivo
    echo "Todos los archivos creados con sus respectivos permisos."
done
exit 0
