#!/bin/bash
#calculadora
echo
echo "------------------------CALCULADORA-------------------------"
echo
echo "Para salir pulsa <q> "
read -p "Que operacion quieres: suma(+),resta(-),multiplicacion(x),division(/) " operacion
read -p "numero 1: " num
read -p "numero 2: " num2

while [ $operacion != 'q' ]; do
    if [ $operacion = "+" ]; then
        let suma=num+num2
        echo $num"+"$num2"="$suma
    fi
    if [ $operacion = "-" ]; then
        let resta=num-num2
        echo $num"-"$num2"="$resta
    fi
    if [ $operacion = "x" ]; then
        let mult=num*num2
        echo $num"x"$num2"="$mult
    fi
    if [ $operacion = "/" ]; then
        let divi=num/num2
        echo $num"/"$num2"="$divi
    fi
    read -p "Que operacion quieres: suma(+),resta(-),multiplicacion(x),division(/) " operacion
    if [ $operacion != "q" ] ; then
    read -p "numero 1: " num
    read -p "numero 2: " num2
    fi
done
exit 0
