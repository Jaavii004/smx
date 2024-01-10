#!/bin/bash
#tablas de multiplicar
#te muestra la tabla que quieras


read -p "Dime que tabla quieres que te muestre: " num

for tabla in $(seq 1 10) ; do

    let numm=num*tabla
    echo $num"x"$tabla"="$numm

done

exit 0


