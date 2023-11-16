#!/bin/bash

# Author <Javier Puertas Rosello >
#      javierpuertas2004@gmail.com

# Cojo en la variable time la columna 4 que es donde esta el tiempo de ejecucion
time=$(ps -ex | awk '{print $4}')

# Inicializo las variables a 0
Tminutos=0
Thoras=0
lineas=0
Tdia=0

for line in $time ; do
    ((lineas++))
    # Para que la primera linea que pone TIME no la sumamemos cortaremos la primera y solo entraremos al if si es mayor que 1
    # Con el ! le decimos lo contrario
    if ! [ $lineas -eq 1 ]; then
        horas=$(echo $line | cut -d ":" -f1)
        minutos=$(echo $line | cut -d ":" -f2)
        Thoras=$(echo "$Thoras + $horas" | bc)
        Tminutos=$(expr $Tminutos + $minutos)
    fi
done

# Si minutos llega a 60 añadimos una hora y restamos 60 minutos a la variable minutos
while [ $Tminutos -ge "60"  ]; do
    Tminutos=$(echo "$Tminutos - 60" | bc)
    Thoras=$(echo "$Thoras + 1" | bc)
done

# Si el total de horas es mayor que 24 ya contaremos en dias asique añadimos un dia si no no hacemos nada
while [ $Thoras -ge "24" ]; do
    let Thoras=Thoras-24
    let Tdia=Tdia+1
done

# Si el resultado es 0 es innecesario mostrarlo
if [ $Tdia -gt 0 ]; then
    echo " El total de dias es "$Tdia
fi

# Si el resultado es 0 es innecesario mostrarlo
if [ $Thoras -gt 0 ]; then
    echo " El total de horas es "$Thoras
fi

# Si el resultado es 0 es innecesario mostrarlo
if [ $Tminutos -gt 0 ]; then
    echo " El total de minutos es "$Tminutos
fi

exit 0

