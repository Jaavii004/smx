#!/bin/bash

maldicion=0
TotalCachorros=0

for i in {1..365};do
    NumCachorros=$(($RANDOM %9+1))
    let tres=i%3
    let LunaLlena=i%28
    let TotalCachorros=TotalCachorros+NumCachorros
    if [ $LunaLlena -eq 0 ];then
        echo " - SALVADOS POR LA CABRA,SALVADOS POR SHUB-NIGGURATH"
    fi
    if [ $i -eq 1 ];then
        echo " - SALVADOS POR LA CABRA,SALVADOS POR SHUB-NIGGURATH"
    fi
    if [ $tres -eq 0 ];then
        echo " - La negra cabra: $NumCachorros"
        let maldicion=$maldicion+1
    fi
done
echo
echo " - Numero de veces que a ocurrido la maldicion: $maldicion"
echo " - Numero total de cachorros que nacen: $TotalCachorros"
