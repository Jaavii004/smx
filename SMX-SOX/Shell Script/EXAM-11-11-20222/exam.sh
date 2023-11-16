#!/bin/bash

comprobar=0
argumento=$1
FechaHora=$(date +%d-%m-%Y+%H\:%M)

if [ $# -eq 1 ]; then
    if [ $argumento = "clean" ]; then
        comprobar=1
        echo " - Has elegido clean"
        if [ -d $HOME/Friday-for-Friday ]; then
            echo " - Vamos a borrar la carpeta "$HOME"/Friday-for-Friday "
            rm -frd $HOME/Friday-for-Friday
        else
            echo " - La carpeta "$HOME"/Friday-for-Friday NO existe"
        fi
    fi
    if [ $argumento = "start" ]; then
        comprobar=1
        if [ -d $HOME/Friday-for-Friday ]; then
            if [ -f $HOME/Friday-for-Friday/time-friday-end.tkn  ]; then
                echo " ***  HAS ACABADO EL JUEGO *** "
                echo "|             ADIOS           |"
                exit 1
            fi
            echo " - Ya existe el directoirio "$HOME"/Friday-for-Friday "
        else
            if [ -f $HOME/Friday-for-Friday/time-friday-end.tkn  ]; then
                echo " ***  HAS ACABADO EL JUEGO *** "
                echo "|             ADIOS           |"
                exit 1
            fi
            echo " - La carpeta "$HOME"/Friday-for-Friday NO existe vamos a crearla"
            mkdir -p $HOME/Friday-for-Friday
        fi
        touch  $HOME/Friday-for-Friday/$FechaHora":time-friday-start.tkn"
        echo " - Creo el archivo en --> "$HOME"/Friday-for-Friday/"$FechaHora":time-friday-start.tkn"
    fi
    if [ $argumento = "green" ]; then
        comprobar=1
        if [ -d $HOME/Friday-for-Friday ]; then
            if [ -f $HOME/Friday-for-Friday/time-friday-end.tkn  ]; then
                echo " ***  HAS ACABADO EL JUEGO *** "
                echo "|             ADIOS           |"
                exit 1
            fi
            echo " - Creo la carpeta en --> "$HOME"/Friday-for-Friday/Green-level"
            echo " - Creo el archivo en --> "$HOME"/Friday-for-Friday/Green-level/"$FechaHora":time-friday-green.tkn"
            mkdir -p $HOME/Friday-for-Friday/Green-level
            touch  $HOME/Friday-for-Friday/Green-level/$FechaHora":time-friday-start.tkn"
        else
            echo " - No existe la carpeta "$HOME"/Friday-for-Friday"
            echo " - Debes ejecutar primero start"
        fi
    fi
    if [ $argumento = "yellow" ]; then
        comprobar=1
        if [ -d $HOME/Friday-for-Friday/Green-level ]; then
            if [ -f $HOME/Friday-for-Friday/time-friday-end.tkn  ]; then
                echo " ***  HAS ACABADO EL JUEGO *** "
                echo "|             ADIOS           |"
                exit 1
            fi
            echo " - Creo la carpeta --> "$HOME"/Friday-for-Friday/Yellow-level/"
            echo " - Creo el archivo en --> "$HOME"/Friday-for-Friday/Yellow-level/"$FechaHora":time-friday-yellow.tkn"
            mkdir -p $HOME/Friday-for-Friday/Yellow-level
            touch  $HOME/Friday-for-Friday/Yellow-level/$FechaHora":time-friday-yellow.tkn"
        else
            echo " ** DEBES EJECUTAR EL NIVEL ANTERIOR **"
        fi
    fi
    if [ $argumento = "red" ]; then
        comprobar=1
        if [ -d $HOME/Friday-for-Friday/Yellow-level ]; then
            if [ -f $HOME/Friday-for-Friday/time-friday-end.tkn  ]; then
                echo " ***  HAS ACABADO EL JUEGO *** "
                echo "|             ADIOS           |"
                exit 1
            fi
            echo " - Creo la carpeta --> "$HOME"/Friday-for-Friday/Red-level/"
            echo " - Creo el archivo en --> "$HOME"/Friday-for-Friday/Red-level/"$FechaHora":time-friday-red.tkn"
            mkdir -p $HOME/Friday-for-Friday/Red-level
            touch  $HOME/Friday-for-Friday/Red-level/$FechaHora":time-friday-red.tkn"
        else
            echo " ** DEBES EJECUTAR EL NIVEL ANTERIOR **"
        fi
    fi
    if [ $argumento = "pirates" ]; then
        comprobar=1
        if [ -d $HOME/Friday-for-Friday/Red-level ]; then
            if [ -f $HOME/Friday-for-Friday/time-friday-end.tkn  ]; then
                echo " ***  HAS ACABADO EL JUEGO *** "
                echo "|             ADIOS           |"
                exit 1
            fi
            echo " - Creo la carpeta --> "$HOME"/Friday-for-Friday/PIRATES/"
            echo " - Creo el archivo en --> "$HOME"/Friday-for-Friday/PIRATES/"$FechaHora":time-friday-piratas.tkn"
            mkdir -p $HOME/Friday-for-Friday/PIRATES
            touch  $HOME/Friday-for-Friday/PIRATES/$FechaHora":time-friday-piratas.tkn"
        else
            echo " ** DEBES EJECUTAR EL NIVEL ANTERIOR **"
        fi
    fi
    if [ $argumento = "end" ]; then
        comprobar=1
        if [ -d $HOME/Friday-for-Friday/PIRATES ]; then
            echo " - Creo el archivo en --> "$HOME"/Friday-for-Friday/time-friday-end.tkn"
            touch  $HOME/Friday-for-Friday/time-friday-end.tkn
            date > $HOME/Friday-for-Friday/time-friday-end.tkn
        fi
    fi

    if [ $comprobar -eq 0 ]; then
        echo " ** [ ERROR ] parametro no permitido"
        echo " Parametros permitidos "
        echo " - clean"
        echo " - start"
        echo " - green"
        echo " - yellow"
        echo " - red"
        echo " - pirates"
        echo " - end"
    fi
else
    echo " ** [ ERROR ] debes introducir un argumento"
fi

exit 0
