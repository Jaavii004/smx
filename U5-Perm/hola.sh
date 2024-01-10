#!/bin/bash
#declaaro el array
declare -a carpetas=(TheFellowshipOfTheRing TheFellowshipOfTheRing/Aragorn  TheFellowshipOfTheRing/Boromir  TheFellowshipOfTheRing/Frodo  TheFellowshipOfTheRing/Gandalf  TheFellowshipOfTheRing/Gimbli  TheFellowshipOfTheRing/Legolas  TheFellowshipOfTheRing/Merry  TheFellowshipOfTheRing/Pippin  TheFellowshipOfTheRing/Sam TheReturnOfTheKing TheTwoTowers )
#hago un for para recorrer todo el array hasta terner todas las carpetas creadas
for array in $(seq 0 11); do
    #si la carpeta no existe la creo
    if ! [ -d ${carpetas[array]} ];then
        mkdir ./${carpetas[array]}
    else
        echo "Ya existe "${carpetas[array]}
    fi
done
#le cambio los permisos a las carpetas
chmod 750 ./TheFellowshipOfTheRing/*
#cambio el propietario de la carpeta
sudo chown smx:smx ./TheFellowshipOfTheRing/*
exit 0
