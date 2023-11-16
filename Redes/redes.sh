#!/bin/bash

ip=$1
masc=$2

if [ $# -eq 2 ]; then
    ip=$(echo $ip | tr '.' ' ')
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
    for masc in $(seq 1 $masc); do
        mascara+="1"
        mascara1+="1 "
    done
    for masc in $(seq $masc 31); do
        mascara+="0"
        mascara1+="0 "
    done


    for mascara in $mascara1; do
        ((sequencia ++))
        case $sequencia in
        1)
            uno=$mascara
        ;;
        2)
            dos=$mascara
        ;;
        3)
            tres=$mascara
        ;;
        4)
            quatro=$mascara
        ;;
        5)
            cinco=$mascara
        ;;
        6)
            seis=$mascara
        ;;
        7)
            siete=$mascara
        ;;
        8)
            ocho=$mascara
        ;;
        9)
            nueve=$mascara
        ;;
        10)
            diez=$mascara
        ;;
        11)
            once=$mascara
        ;;
        12)
            doce=$mascara
        ;;
        13)
            trece=$mascara
        ;;
        14)
            quatorce=$mascara
        ;;
        15)
            quince=$mascara
        ;;
        16)
            dieziseis=$mascara
        ;;
        17)
            diezisiete=$mascara
        ;;
        18)
            dieziocho=$mascara
        ;;
        19)
            diezinueve=$mascara
        ;;
        20)
            veinte=$mascara
        ;;
        21)
            vintiuno=$mascara
        ;;
        22)
            vintidos=$mascara
        ;;
        23)
            vintitres=$mascara
        ;;
        24)
            vinticuatro=$mascara
        ;;
        25)
            vinticinco=$mascara
        ;;
        26)
            vintiseis=$mascara
        ;;
        27)
            vintisiete=$mascara
        ;;
        28)
            vintiocho=$mascara
        ;;
        29)
            vintinueve=$mascara
        ;;
        30)
            treinta=$mascara
        ;;
        31)
            trentaiuno=$mascara
        ;;
        32)
            treintaidos=$mascara
        ;;
        esac
    done

    for mascara in $binarioseparado; do
        (( sequencia1 ++))
        case $sequencia1 in
        1)
            uno1=$mascara
        ;;
        2)
            dos1=$mascara
        ;;
        3)
            tres1=$mascara
        ;;
        4)
            quatro1=$mascara
        ;;
        5)
            cinco1=$mascara
        ;;
        6)
            seis1=$mascara
        ;;
        7)
            siete1=$mascara
        ;;
        8)
            ocho1=$mascara
        ;;
        9)
            nueve1=$mascara
        ;;
        10)
            diez1=$mascara
        ;;
        11)
            once1=$mascara
        ;;
        12)
            doce1=$mascara
        ;;
        13)
            trece1=$mascara
        ;;
        14)
            quatorce1=$mascara
        ;;
        15)
            quince1=$mascara
        ;;
        16)
            dieziseis1=$mascara
        ;;
        17)
            diezisiete1=$mascara
        ;;
        18)
            dieziocho1=$mascara
        ;;
        19)
            diezinueve1=$mascara
        ;;
        20)
            veinte1=$mascara
        ;;
        21)
            vintiuno1=$mascara
        ;;
        22)
            vintidos1=$mascara
        ;;
        23)
            vintitres1=$mascara
        ;;
        24)
            vinticuatro1=$mascara
        ;;
        25)
            vinticinco1=$mascara
        ;;
        26)
            vintiseis1=$mascara
        ;;
        27)
            vintisiete1=$mascara
        ;;
        28)
            vintiocho1=$mascara
        ;;
        29)
            vintinueve1=$mascara
        ;;
        30)
            treinta1=$mascara
        ;;
        31)
            trentaiuno1=$mascara
        ;;
        32)
            treintaidos1=$mascara
        ;;
        esac
    done

    let c1=uno*uno1
    let c2=dos*dos1
    let c3=tres*tres1
    let c4=cuatro*cuatro1
    let c5=cinco*cinco1
    let c6=seis*seis1
    let c7=ocho*siete1
    let c8=ocho*ocho1
    let c9=nueve*nueve1
    let c10=diez*diez1
    let c11=once*once1
    let c12=doce*doce1
    let c13=trece*trece1
    let c14=quatorce*quatorce1
    let c15=quince*quince1
    let c16=dieziseis*dieziseis1
    let c17=diezisiete*diezisiete1
    let c18=dieziocho*dieziocho1
    let c19=dizienueve*diezinueve1
    let c20=veinte*veinte1
    let c21=vintiuno*vintiuno1
    let c22=vintidos*vintidos1
    let c23=vintitres*vintitres1
    let c24=vinticuatro*vinticuatro1
    let c25=vinticinco*vinticinco1
    let c26=vintiseis*vintiseis1
    let c27=vintisiete*vintisiete1
    let c28=vintiocho*vintiocho1
    let c29=vintinueve*vintinueve1
    let c30=treinta*treinta1
    let c31=treintaiuno*treintaiuno1
    let c32=treintaidos*treintaidos1

    primeros8=$(echo $c1 $c2 $c3 $c4 $c5 $c6 $c7 $c8)
    segundos8=$(echo $c9 $c10 $c11 $c12 $c13 $c14 $c15 $c16)
    tereros8=$(echo $c17 $c18 $c19 $c20 $c21 $c22 $c23 $c24)
    cuarto8=$(echo $c25 $c26 $c27 $c28 $c29 $c30 $c31 $c31 $c32)
    
    cero=0
    uno=0
    dos=0
    tres=0
    cuatro=0
    cinco=0
    seis=0
    siete=0

    for resultado1 in $primeros8 ; do
        ((p ++))
        if [ $p -eq 1 ]; then
            let siete=2*2*2*2*2*2*2*$resultado1
        fi
        if [ $p -eq 2 ]; then
            let seis=2*2*2*2*2*2*$resultado1
        fi
        if [ $p -eq 3 ]; then
            let cinco=2*2*2*2*2*$resultado1
        fi
        if [ $p -eq 4 ]; then
            let cuatro=2*2*2*2*$resultado1
        fi
        if [ $p -eq 5 ]; then
            let tres=2*2*2*$resultado1
        fi
        if [ $p -eq 6 ]; then
            let dos=2*2*$resultado1
        fi
        if [ $p -eq 7 ]; then
            let uno=2*$resultado1
        fi
        if [ $p -eq 8 ]; then
            let cero=1*$resultado1
        fi
    done

    let resultado1=$siete+$seis+$cinco+$cuatro+$tres+$dos+$uno+$cero

    for resultado2 in $segundos8 ; do
        ((s ++))
        if [ $s -eq 1 ]; then
            let siete=2*2*2*2*2*2*2*$resultado2
        fi
        if [ $s -eq 2 ]; then
            let seis=2*2*2*2*2*2*$resultado2
        fi
        if [ $s -eq 3 ]; then
            let cinco=2*2*2*2*2*$resultado2
        fi
        if [ $s -eq 4 ]; then
            let cuatro=2*2*2*2*$resultado2
        fi
        if [ $s -eq 5 ]; then
            let tres=2*2*2*$resultado2
        fi
        if [ $s -eq 6 ]; then
            let dos=2*2*$resultado2
        fi
        if [ $s -eq 7 ]; then
            let uno=2*$resultado2
        fi
        if [ $s -eq 8 ]; then
            let cero=1*$resultado2
        fi
    done
    let resultado2=$siete+$seis+$cinco+$cuatro+$tres+$dos+$uno+$cero

    for resultado3 in $tereros8 ; do
        ((t ++))
        if [ $t -eq 1 ]; then
            let siete=2*2*2*2*2*2*2*$resultado3
        fi
        if [ $t -eq 2 ]; then
            let seis=2*2*2*2*2*2*$resultado3
        fi
        if [ $t -eq 3 ]; then
            let cinco=2*2*2*2*2*$resultado3
        fi
        if [ $t -eq 4 ]; then
            let cuatro=2*2*2*2*$resultado3
        fi
        if [ $t -eq 5 ]; then
            let tres=2*2*2*$resultado3
        fi
        if [ $t -eq 6 ]; then
            let dos=2*2*$resultado3
        fi
        if [ $t -eq 7 ]; then
            let uno=2*$resultado3
        fi
        if [ $t -eq 8 ]; then
            let cero=1*$resultado3
        fi
    done
    let resultado3=$siete+$seis+$cinco+$cuatro+$tres+$dos+$uno+$cero

    for resultado4 in $cuarto8 ; do
        ((c ++))
        if [ $c -eq 1 ]; then
            let siete=2*2*2*2*2*2*2*$resultado4
        fi
        if [ $c -eq 2 ]; then
            let seis=2*2*2*2*2*2*$resultado4
        fi
        if [ $c -eq 3 ]; then
            let cinco=2*2*2*2*2*$resultado4
        fi
        if [ $c -eq 4 ]; then
            let cuatro=2*2*2*2*$resultado4
        fi
        if [ $c -eq 5 ]; then
            let tres=2*2*2*$resultado4
        fi
        if [ $c -eq 6 ]; then
            let dos=2*2*$resultado4
        fi
        if [ $c -eq 7 ]; then
            let uno=2*$resultado4
        fi
        if [ $c -eq 8 ]; then
            let cero=1*$resultado4
        fi
    done
    let resultado4=$siete+$seis+$cinco+$cuatro+$tres+$dos+$uno+$cero


    resultadototal=$resultado1"."$resultado2"."$resultado3"."$resultado4
    echo -e "La direccion de red de la dirrecion "$1" es ""\e[1m\e[38;5;118m$resultadototal\e[0m"

else
    echo "Necesitamos un argumento que sea la ip y el oto que sea la mascara de red"
    echo "USO-->> <IP deseada> <MASCARA en formato /??>"
fi



exit 0