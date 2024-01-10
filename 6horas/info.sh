#!/bin/bash

if [ -f info.md ]; then
    rm info.md
    echo "El archivo info.md existe asi que voy a borrarlo."
    echo "Ya lo he borrado."
    echo
fi

if [ -f info.pdf ]; then
    rm info.pdf
    echo
    echo "El archivo info.pdf existe asi que voy a borrarlo."
    echo "Ya lo he borrado."
    echo
fi

#todos los comandos para saber todo lo que tengo que saber
fecha=$(date +%x)
hora=$(date +%r)
nombre=$(hostname)
ip=$(ip a | grep inet | grep brd | cut -d " " -f6 | head -n1 | cut -d "/" -f1)
mascara=$(ifconfig eth0 | grep -i netmask | cut -d "k" -f2 | cut -d " " -f2)
procesador=$(lscpu | grep model | cut -d ":" -f2)
ram=$(free -h | head -n2 | tail -n1 | cut -d ":" -f2 | cut -d "," -f1,2 | cut -d " " -f8)
almacenamiento=$(df -h | grep -w "/" | cut -d " " -f1)
porcentaje=$(df -h | grep -w "/" | cut -d "/" -f3 | cut -d "G" -f4)
#aqui lo muestro y lo mando todo al archivo info.md

echo "# Javier Puertas Rosello" >> info.md 
echo "## "$fecha >> info.md
echo $hora >> info.md
echo  >> info.md
echo "| **Campo** | **Información** |" >> info.md
echo "|-- | -- |" >> info.md
echo "| **hostname** | "$nombre" |" >> info.md
echo "| **Dirección IP** | "$ip" |" >> info.md
echo "| **Máscara de red** | "$mascara" |" >> info.md
echo "| **Procesador** |"$procesador" |" >> info.md
echo "| **Memoria RAM** | "$ram" |" >> info.md
echo "| **Almacenamiento Principal** | "$almacenamiento" |" >> info.md
echo "| **Almacenamiento usado** | "$porcentaje" |" >> info.md

#te muestro que se a ejecutado bien y como puedes abrirlo
echo "Se a relizado con exito."
echo "Se a mandado todo al archivo info.md"
echo "Si quieres ver lo que pone puedes hacerlo ejecutando --> cat info.md"

exit 0
