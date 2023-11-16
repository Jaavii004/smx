#!/bin/bash

#declaro $cables
cable=D
#declaro $num a 0 para q si en la primera no pones nada aparezca el contador a 0
num=0
#hago las linias para poner las linias
veces=23
liniaguiones=""
for (( i=1; i<=$veces; i++ )); do
    liniaguiones=$liniaguiones"-"
done
liniaguiones="|"$liniaguiones"|"

clear
echo "Español: ES"
echo "Ingles: I"
#el idioma
read -p "Quieres que te lo muestre en español o ingles: " lengua
clear
#se repite hasta que no este bien escrito
while ! [ $lengua = "ES" -o $lengua = "I" ]; do
    clear
    echo "Español: ES"
    echo "Ingles: I"
    read -p "Quieres que te lo muestre en español o ingles: " lengua
    clear
done

while [ $cable != q ]; do
    #idioma español
    if [ $lengua = ES ]; then
        #tabla de guia
        echo -e "\n|  Opcion         Letra |"
        echo $liniaguiones
        echo "|  Directo          D   |"
        echo $liniaguiones
        echo "|  Cruzado          C   |"
        echo $liniaguiones
        echo -e "|  Salida           q   |\n"
        #pregunto
        read -p "Que tipo de cable quieres que te muestre? " cable
        if [ $cable = D ]; then
            ((num ++))
            echo -e "\nEl cable que has elegido es el directo.\n"
            echo -e "1\nblanco-naranja  naranja  blanco-verde  azul  blanco-azul  verde  blanco-marrón  marrón"

            echo -e "2\nblanco-naranja  naranja  blanco-verde  azul  blanco-azul  verde  blanco-marrón  marrón"
        fi
        if [ $cable = C ]; then
            ((num ++))
            echo -e "\nEl cable que has elegido es el cruzado.\n"
            echo -e "1\nblanco-naranja  naranja  blanco-verde  azul  blanco-azul  verde  blanco-marrón  marrón"
            echo -e "2\nblanco-verde  verde  blanco-naranja azul  blanco-azul naranja blanco-marrón marrón "
        fi
        if ! [ $num -eq 0 ]; then
            echo -e "\nAlabado * J'avih-er, y sus enseñanzas prácticas,hemos consultado"
            echo -e "NÚMERO_DE_CABLES: "$num".\n"
            sleep 2
        fi
    fi

    #idioma ingles
    if [ $lengua = I ]; then
        #tabla de guia
        echo -e "\n|  Option        Letter |"
        echo $liniaguiones
        echo "|  Direct           D   |"
        echo $liniaguiones
        echo "|  Cross            C   |"
        echo $liniaguiones
        echo -e "|  Output           q   |\n"
        #pregunto
        read -p "What type of cable do you want to be displayed? " cable
        if [ $cable = D ]; then
            ((num ++))
            echo -e "\nThe cable you have chosen is the direct.\n"
            echo -e "1\nwhite-orange  orange  white-green  blue  white-blue  green  white-brown  brown"
            echo -e "2\nwhite-orange  orange  white-green  blue  white-blue  green  white-brown  brown"
        fi
        if [ $cable = C ]; then
            ((num ++))
            echo -e "\nThe cable you have chosen is the crossover cable.\n"
            echo -e "1\nwhite-orange  orange  white-green  blue  white-blue  green  white-brown  brown"
            echo -e "2\nwhite-green  green  green  white-orange  blue  blue  white-blue  orange  white-brown  brown"
        fi
        if ! [ $num -eq 0 ]; then
            echo -e "\nPraise * J'avih-er, and his practical teachings,we have consulted"
            echo -e "NUMBER_OF_WIRES: "$num".\n"
            sleep 2
        fi
    fi

done

exit 0
