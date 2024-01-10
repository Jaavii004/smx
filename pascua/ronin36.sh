#!/bin/bash

ip=$1
mascara=$2
validIP=0
validMasc=0
if [ $# -eq 2 ]; then
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
                        validIP=1
                    fi
                fi
            fi
        fi
    fi
    mascarasinbarra=$(echo $mascara | cut -d "/" -f2 )
    if [ $mascarasinbarra -ge 1 -a  $mascarasinbarra -le 36 ] ; then
        validMasc=1
    fi
    if [ $validIP -eq 1 -a $validMasc -eq 1 ]; then
        echo "La "$ip" "$mascara" es correcta"
    else
        echo "La ip o la mascara no son validas"
    fi
else
    echo "USO:"
    echo "<IP valida> </Mascara>"
fi

exit 0
