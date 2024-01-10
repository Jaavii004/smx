#!/bin/bash
#cuantos quilos tienes
clear
veces=33
liniaguiones=""
for (( i=1; i<=$veces; i++ )); do
    liniaguiones=$liniaguiones"-"
done
liniaguiones="|"$liniaguiones"|"

echo "Sin decimas y redondeando al alza."
read -p "Cuantas toneladas de uva vas a cargar: " tuyas

numero="^[0-9]+$"
while ! [[ $tuyas =~ $numero ]]; do
    echo -e "\nERROR: LO QUE HAS INTRODUCIDO NO ES UN NÚMERO.\n"
    echo "Sin decimas y redondeando al alza."
    read -p "Cuantas toneladas de uva vas a cargar: " tuyas
done

let uvas=tuyas*1000
#tabla de guia
echo -e "\n|  Modelo de vagón    Capacidad   |"
echo $liniaguiones
echo "|  Titán              1200 kilos  |"
echo $liniaguiones
echo "|  Pachyderm          900 kilos   |"
echo $liniaguiones
echo -e "|  Albatros           300 kilos   |\n\n"
echo "·Modelo Titan (letra t)."
echo "·Modelo Pachyderm (letra p)."
echo -e "·Modelo Albatros (letra to).\n"
read -p "Que modelo quieres: " modelo
echo

while ! [ $modelo = t -o $modelo = T -o $modelo = p -o $modelo = P -o $modelo = to -o $modelo = To -o  $modelo = TO -o $modelo = tO ]; do
    echo
    read -p "Que modelo quieres: " modelo
    echo
done

if [ $modelo = t -o $modelo = T ]; then
    echo -e "Has elegido el vagon TITAN.\n"
    let vagones=uvas/1200
    let comprobacion=1200*vagones
    if ! [ $uvas -le $comprobacion ]; then
        let vagones=vagones+1
    fi
    echo "Necesitas "$vagones" vagones para cargar tus "$tuyas" toneladas."
fi

if [ $modelo = p -o $modelo = P ]; then
    echo -e "Has elegido el vagon PACHYDERM.\n"
    let vagones=uvas/900
    let comprobacion=900*vagones
    if ! [ $uvas -le $comprobacion ]; then
        let vagones=vagones+1
    fi
    echo "Necesitas "$vagones" vagones para cargar tus "$tuyas" toneladas."
fi

if [ $modelo = to -o $modelo = To -o  $modelo = TO -o $modelo = tO ]; then
    echo -e "Has elegido el vagon ALBATROSS.\n"
    let vagones=uvas/300
    let comprobacion=300*vagones
    if ! [ $uvas -le $comprobacion ]; then
        let vagones=vagones+1
    fi
    echo "Necesitas "$vagones" vagones para cargar tus "$tuyas" toneladas."
fi
numi=0
let mostrar=vagones%2
#si el numero es impar
if [ $mostrar -eq 1 ]; then
    while ! [ $vagones = $numi ]; do
        ((numi ++))
        let mostrar=vagones%2
        #si el numero es impar
        if [ $vagones -gt 1 ]; then
            if [ $vagones -gt 1 ]; then
                if [ $mostrar -eq 1 ]; then
                    cat tren2
                    let vagones=vagones-2
                fi
            fi
            if [ $vagones -eq 1 ]; then
                if [ $mostrar -eq 1 ]; then
                    cat tren1
                    vagones=$numi
                fi
            fi
        fi
    done

    if [ $vagones -eq 1 ]; then
        if [ $mostrar -eq 1 ]; then
            cat tren1
            vagones=$numi
        fi
    fi

fi
#si el numero es par
if [ $mostrar -eq 0 ]; then
    let vagones=vagones/2
    while ! [ $vagones = $numi ]; do
        ((numi ++))
        cat tren2
        if [ $vagones -eq  2 ]; then
            vagones=$numi
            cat tren2
        fi
    done
fi

exit 0
