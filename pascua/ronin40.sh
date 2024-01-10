#!/bin/bash

ip=$1
valid=0
primera=$(echo $ip | cut -d "." -f1)
segunda=$(echo $ip | cut -d "." -f2)
tercera=$(echo $ip | cut -d "." -f3)
cuarta=$(echo $ip | cut -d "." -f4)

uno=$(echo $ip | cut -d "." -f1 | wc -c)
dos=$(echo $ip | cut -d "." -f2 | wc -c)
tres=$(echo $ip | cut -d "." -f3 | wc -c)
cuatro=$(echo $ip | cut -d "." -f4 | wc -c)
if [ $uno -ge 3 -a $primera -le 255 -a $primera -ge 10 ]; then
    if [ $dos -ge 2 -a $segunda -le 255 ]; then
        if [ $tres -ge 2 -a $tercera -le 255 ]; then
            if [ $cuatro -ge 2 -a $cuarta -le 255 ]; then
                if ! [[ $ip =~ [0-9]\.[0-9]\.[0-9]\.[0-9]$ ]]; then
                    valid=1
                fi
            fi
        fi
    fi
fi

if [ $valid -eq 0  ]; then
    echo "La IP no es valida."
fi
if [ $valid -eq 1 ]; then
    echo "ejecutando el comprobador"
    for IP in $(seq 1 255); do
        numero=$(echo $primera"."$segunda"."$tercera"."$IP)
        comprobar=$(ping -c 1 $numero | grep rtt | wc -l)
        if ! [ $comprobar -eq 1 ]; then
            echo $primera"."$segunda"."$tercera"."$IP" --> Esta libre"
        fi
    done
fi
exit 0
