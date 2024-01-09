#!/bin/bash

if ! [ $# -eq 3 ]; then
    echo "ERROR"
    echo "Uso: <ip primera> <ipsegunda> <mascara de red>"
else
    ip=$(echo $1 | tr '.' ' ')
    ip2=$(echo $2 | sed 's/\./ /g')
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

    for numeross in $ip2; do
        caracteres=0
        while [ $numeross != 0 ]; do
            let binario=numeross%2
            let numeross=numeross/2
            binari+="${binario}"
            binarios2+="${binario} "
        done
        caracter=$(echo $binari | wc -m)
        let caracter=caracter-1
        for numii in $(seq $caracter 7);do
            binari+="0"
        done
        binari=$(echo $binari | rev)
        numetotal+="${binari}."
        binari=""
        for numii in $(seq $caracter 7);do
            binarios2+=" 0"
        done

        binarios2=$(echo $binarios2 | rev )
        binarioseparado2+="${binarios2} "
        binarios2=""

    done

    echo "La primera ip es "$1" y en binario: "$numtotal
    echo "La segunda ip es "$2" y en binario: "$numetotal

    for masc in $(seq 1 $3); do
        mascara+="1"
        mascara1+="1 "
    done
    for masc in $(seq $3 31); do
        mascara+="0"
        mascara1+="0 "
    done
    echo "                                                 "$mascara
    for mascara in $mascara1; do
        (( sequencia ++))
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

    resultadodelaprimera=$(echo $c1$c2$c3$c4$c5$c6$c7$c8$c9$c10$c11$c12$c13$c14$c15$c16$c17$c18$c19$c20$c21$c22$c23$c24$c25$c26$c27$c28$c29$c30$c31$c31$c32)

    for mascara in $binarioseparado2; do
        (( sequencia2 ++))
        case $sequencia2 in
        1)
            uno2=$mascara
        ;;
        2)
            dos2=$mascara
        ;;
        3)
            tres2=$mascara
        ;;
        4)
            quatro2=$mascara
        ;;
        5)
            cinco2=$mascara
        ;;
        6)
            seis2=$mascara
        ;;
        7)
            siete2=$mascara
        ;;
        8)
            ocho2=$mascara
        ;;
        9)
            nueve2=$mascara
        ;;
        10)
            diez2=$mascara
        ;;
        11)
            once2=$mascara
        ;;
        12)
            doce2=$mascara
        ;;
        13)
            trece2=$mascara
        ;;
        14)
            quatorce2=$mascara
        ;;
        15)
            quince2=$mascara
        ;;
        16)
            dieziseis2=$mascara
        ;;
        17)
            diezisiete2=$mascara
        ;;
        18)
            dieziocho2=$mascara
        ;;
        19)
            diezinueve2=$mascara
        ;;
        20)
            veinte2=$mascara
        ;;
        21)
            vintiuno2=$mascara
        ;;
        22)
            vintidos2=$mascara
        ;;
        23)
            vintitres2=$mascara
        ;;
        24)
            vinticuatro2=$mascara
        ;;
        25)
            vinticinco2=$mascara
        ;;
        26)
            vintiseis2=$mascara
        ;;
        27)
            vintisiete2=$mascara
        ;;
        28)
            vintiocho2=$mascara
        ;;
        29)
            vintinueve2=$mascara
        ;;
        30)
            treinta2=$mascara
        ;;
        31)
            trentaiuno2=$mascara
        ;;
        32)
            treintaidos2=$mascara
        ;;
        esac
    done
    let cc1=uno*uno2
    let cc2=dos*dos2
    let cc3=tres*tres2
    let cc4=cuatro*cuatro2
    let cc5=cinco*cinco2
    let cc6=seis*seis2
    let cc7=ocho*siete2
    let cc8=ocho*ocho2
    let cc9=nueve*nueve2
    let cc10=diez*diez2
    let cc11=once*once2
    let cc12=doce*doce2
    let cc13=trece*trece2
    let cc14=quatorce*quatorce2
    let cc15=quince*quince2
    let cc16=dieziseis*dieziseis2
    let cc17=diezisiete*diezisiete2
    let cc18=dieziocho*dieziocho2
    let cc19=dizienueve*diezinueve2
    let cc20=veinte*veinte2
    let cc21=vintiuno*vintiuno2
    let cc22=vintidos*vintidos2
    let cc23=vintitres*vintitres2
    let cc24=vinticuatro*vinticuatro2
    let cc25=vinticinco*vinticinco2
    let cc26=vintiseis*vintiseis2
    let cc27=vintisiete*vintisiete2
    let cc28=vintiocho*vintiocho2
    let cc29=vintinueve*vintinueve2
    let cc30=treinta*treinta2
    let cc31=treintaiuno*treintaiuno2
    let cc32=treintaidos*treintaidos2

    resultadodelasegunda=$(echo $cc1$cc2$cc3$cc4$cc5$cc6$cc7$cc8$cc9$cc10$cc11$cc12$cc13$cc14$cc15$cc16$cc17$cc18$cc19$cc20$cc21$cc22$cc23$cc24$cc25$cc26$cc27$cc28$cc29$cc30$cc31$cc31$cc32)
echo $binarioseparado
echo $binarioseparado2
echo $resultadodelaprimera
echo $resultadodelasegunda

    if [ $resultadodelasegunda = $resultadodelaprimera ]; then
        echo "Las dos subredes SI estan en la misma subred."
    else
        echo "Las dos subredes NO estan en la misma subred."
    fi

fi

exit 0
