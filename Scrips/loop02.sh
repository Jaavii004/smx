#!/bin/bash
#si hay mas de 2000 el ordenador esta en peligro
echo "Cuando quieras detenerlo pulsa simultaniamente las teclas: CONTROL + C."

while [ 0 = 0 ]; do
    #lo contamos
    num=$(ls -d /proc/*/ | wc -l)
    #comprobamos si es mayor o menor
    if [ $num -lt 2000 ]; then
        #es menor que 2000 y es correcto
        echo "= Testing /proc/:"$num "procesos -> OK"
    else
        #es mayor que 2000 y esta incorrecto
        echo "= Testing /proc/:"$num "procesos -> PELIGRO"
    fi
    sleep 10
done
exit 0
