#!/bin/bash
#uso el $# para saber si han introducido dos argumentos
existenusu=0
existgrup=0
if [ $# -eq 3 ]; then
    if [ $1 = "usuario" ]; then
        usuario=$(cat /etc/passwd | cut -d ":" -f1)
        declare -a usuarios=($usuario)
        contar1=$(cat /etc/passwd | cut -d ":" -f1 | wc -w)
        let contar1=contar1-1
        for numero1 in $(seq 0 $contar1); do
            usuarios2=${usuarios[numero1]}
            if [ $usuarios2 = $2 ]; then
                grupo=$(groups $2 | cut -d ":" -f2)
                numero=$(groups $2 | cut -d ":" -f2 | wc -w)
                let numero=numero-1
                #declaro el array
                declare -a grupos=($grupo)
                echo "Se mostraran los grupos del usuario "$2":"
                for repe in $(seq 0 $numero); do
                    echo ${grupos[repe]}
                    #los voy mostrando cada medio segundo
                    sleep 0.5
                done
                existenusu=1
            fi
        done
        if [ $existenusu -eq 0 ]; then
            echo "El usuario "$2" no existe."
        fi
    fi
    if [ $1 = "grupo" ]; then
        grupos2=$(cat /etc/passwd | cut -d ":" -f5 |tr "," " ")
        declare -a grupos2=($grupos2)
        contar2=$(cat /etc/passwd | cut -d ":" -f5 |tr "," " " | wc -w)
        let contar2=contar2-1
        for numero2 in $(seq 0 $contar2); do
            grupos3=${grupos2[numero2]}
            if [ $grupos3 = $2 ]; then
                grupo1=$(cat /etc/passwd | cut -d ":" -f1,5 | grep -i $2 | cut -d ":" -f1)
                numero1=$(cat /etc/passwd | cut -d ":" -f1,5 | grep -i $2 | cut -d ":" -f1 | wc -w)
                let numero1=numero1-1
                #declaro el array
                declare -a grupos1=($grupo1)
                echo "Se mostrara el usuario del grupo "$2":"
                for repe in $(seq 0 $numero1); do
                    echo ${grupos1[repe]}
                    #los voy mostrando cada medio segundo
                    sleep 0.5
                done
                existgrup=1
            fi
        done
        if [ $existgrup -eq 0 ]; then
            echo "El grupo "$2" no existe."
        fi
    fi
    if ! [ $1 = "grupo" -o $1 = "usuario" ]; then
        echo "Tienes que poner en el primer argumento grupo o usuario."
    fi
else
    #lo hago por si alguien no sabe usuarlo
    echo "USO:"
    echo "<grupo o usuario> <el usuario o grupo que quieres buscar>"
    #salida con error
    exit 1
fi
exit 0
