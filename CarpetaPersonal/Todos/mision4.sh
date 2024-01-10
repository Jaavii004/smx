#!/bin/bash
#lagos
echo "- S) Lago Superior"
echo "- M) Lago Michigan"
echo "- H) Lago Huron"
echo "- E) Lago Erie"
echo "- O) Lago Ontario"
echo "- I) Mostrar Informe"
echo "- q) Salir"
read -p "Que lago quieres: " lagos
while [ $lagos != 'q' ]; do
    if [ $lagos = "S" ]; then
        read -p "introduzca caudal: " caudal1
    fi
    if [ $lagos = "M" ]; then
        read -p "introduzca caudal: " caudal2
    fi
    if [ $lagos = "H" ]; then
        read -p "introduzca caudal: " caudal3
    fi
    if [ $lagos = "E" ]; then
        read -p "introduzca caudal: " caudal4
    fi
    if [ $lagos = "O" ]; then
        read -p "introduzca caudal: " caudal5
    fi
    if [ $lagos = "I" ]; then
        echo "Lago superior: " $caudal1
        echo "Lago Michigan: " $caudal2
        echo "Lago Huron: " $caudal3
        echo "Lago Michigan: " $caudal4
        echo "lago Erie: " $caudal5
    let suma=caudal1+caudal2+caudal3+caudal4+caudal5
        if [ $suma -lt 100 ]; then
        echo "--malo--"
        fi
        if [ $suma -gt 100 -a $suma -lt 850 ]; then
        echo "--bueno--"
        fi
        if [ $suma -gt 851 ]; then
        echo "--muy bueno--"
        fi
    fi
    echo "- S) Lago Superior"
    echo "- M) Lago Michigan"
    echo "- H) Lago Huron"
    echo "- E) Lago Erie"
    echo "- O) Lago Ontario"
    echo "- I) Mostrar Informe"
    echo "- q) Salir"
    read -p "Que lago quieres: " lagos
done
exit 0
