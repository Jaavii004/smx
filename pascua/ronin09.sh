#!/bin/bash
#uso el $# para saber si han introducido dos argumentos
if [ $# -eq 2 ]; then
    if [ $1 = "usuario" ]; then
        grupo=$(groups $2)
        numero=$(groups $2 | wc -w)
        let numero=numero-1
        #declaro el array
        declare -a grupos=($grupo)
        echo "Se mostraran los grupos del usuario "$2":"
        for repe in $(seq 0 $numero); do
            echo ${grupos[repe]}
            #los voy mostrando cada medio segundo
            sleep 0.5
        done
    fi
    if [ $1 = "grupo" ]; then
        grupo1=$(cat /etc/passwd | cut -d ":" -f1,5 | grep -i $2 | cut -d ":" -f1)
        numero1=$(cat /etc/passwd | cut -d ":" -f1,5 | grep -i $2 | cut -d ":" -f1 | wc -w)
        let numero1=numero1-1
        #declaro el array
        declare -a grupos1=($grupo1)
        echo "Se mostrara el usuario del grupo "$2":"
        for repe in $(seq 0 $numero); do
            echo ${grupos1[repe]}
            #los voy mostrando cada medio segundo
            sleep 0.5
        done
    fi
    if ! [ $1 = "grupo" -o $1 = "usuario" ]; then
        echo "Tienes que poner en el primer argumento grupo o usuario."
    fi
else
    #lo hago por si alguien no sabe usuarlo
    echo "USO:"
    echo "<grupo o usuario> <el usuario o grupo que quieres buscar>"
fi
exit 0
