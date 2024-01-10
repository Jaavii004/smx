#!/bin/bash

if [ $# -eq 2 ]; then
    IP=$1
    if [[ $IP =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
        Mascara=$2
        ip=$(echo $IP | tr '.' ' ')
        for numeros in $ip; do
            while [ $numeros != 0 ]; do
                let binario=numeros%2
                let numeros=numeros/2
                binarios+="${binario}"
                binarios1+="${binario} "
            done
            caracteres=$(echo $binarios | wc -m)
            let caracteres=caracteres-1
            for numii in $(seq $caracteres 7);do
                binarios+="0"
                binarios1+="0 "
            done
            binarios=$(echo $binarios | rev)
            numtotal+="${binarios}."
            binarios=""

            binarios1=$(echo $binarios1 | rev)
            binarioseparado+=" ${binarios1}"
            binarios1=""
        done
        declare -a numbinario=($binarioseparado)

        for masc in $(seq 1 $Mascara); do
            mascara1+="1 "
        done
        for masc in $(seq $Mascara 31); do
            mascara1+="0 "
        done

        declare -a mascara=($mascara1)
        
        if [ $Mascara -ge 1 -a $Mascara -le 8 ]; then
            for h in $(seq 0 7); do
                BinComp+=$(echo ${numbinario[h]})
            done
        fi

        if [ $Mascara -ge 9 -a $Mascara -le 16 ]; then
            for h in $(seq 8 15); do
                BinComp+=$(echo ${numbinario[h]})
            done
        fi

        if [ $Mascara -ge 17 -a $Mascara -le 24 ]; then
            for h in $(seq 16 23); do
                BinComp+=$(echo ${numbinario[h]})
            done
        fi

        if [ $Mascara -ge 25 -a $Mascara -le 32 ]; then
            for h in $(seq 24 31); do
                BinComp+=$(echo ${numbinario[h]})
            done
        fi

        if [ $Mascara -ge 1 -a $Mascara -le 8 ]; then
            for h in $(seq 0 7); do
                MascComp+=$(echo ${mascara[h]})
            done
        fi

        if [ $Mascara -ge 9 -a $Mascara -le 16 ]; then
            for h in $(seq 8 15); do
                MascComp+=$(echo ${mascara[h]})
            done
        fi

        if [ $Mascara -ge 17 -a $Mascara -le 24 ]; then
            for h in $(seq 16 23); do
                MascComp+=$(echo ${mascara[h]})
            done
        fi

        if [ $Mascara -ge 25 -a $Mascara -le 32 ]; then
            for h in $(seq 24 31); do
                MascComp+=$(echo ${mascara[h]})
            done
        fi
        MascComp=$(echo $MascComp | tr '0' '9' | tr '1' '0' | tr '9' '1')
        let MascComp=MascComp
        let BinComp=BinComp
        if [ "$MascComp" -ge "$BinComp" ]; then
            echo "Ip valida para esa mascara."
        else
            echo "Ip no es valida para esa mascara"
        fi

    fi
fi

exit 0