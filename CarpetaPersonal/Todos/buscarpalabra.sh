#!/bin/bash
#un archivo que pueda buscar dentro de el una palabra

echo
ls ~
echo

read -p "De cual de estos archivos quieres buscar: " archivo
read -p "Dime la palabra que quieres buscar del archivo que as selecionado: " palabra

archivoo=(~/$archivo)
grep $palabra $archivoo

exit 0
