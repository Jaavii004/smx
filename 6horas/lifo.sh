#!/bin/bash

#los nombramos para evitar errores
leer=$1
escribir=$2

#borro el archivo
if [ -f $escribir ]; then
    rm $escribir
    echo "El archivo "$escribir" existe asi que voy a borrarlo."
    echo "Ya lo he borrado."
    echo
fi

#solo va si pones dos
if [ $# -eq 2 ]; then
    linia_ultima=$(sort -t , -k3 -k4      $leer | tail -n1)
    echo $linia_ultima >> $escribir
    sort -t , -k3 -k4  $leer | head -n20 >> $escribir
else
    #para que sepas usarlo
    echo "Error"
    echo "USO -->> <Nombre de archivo a leer> <Nombre de archivo a escribir> "
fi

exit 0