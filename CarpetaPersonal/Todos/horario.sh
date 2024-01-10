#!/bin/bash
#me dira en la clase estoy
read -p "Dia que quieres saber que te toca: " diadelasem
read -p "Hora que quieres saber que te toca: " hora
#diadelasem=$(date +"%A")
#hora=$(date +%H)
if [ $diadelasem = lunes ]; then
	if [ $hora = 8 -o $hora = 9 -o $hora = 10 ]; then
		echo "Montaje y mantenimiento de equipos."
	fi
        if [ $hora = 11 ]; then
        	echo "Formacion y orientacion."
        fi
        if [ $hora = 12 -o $hora = 13 ]; then
        	echo "Aplicaciones ofimaticas."
        fi
fi
if [ $diadelasem = martes ]; then
        if [ $hora = 8 -o $hora = 9 ]; then
        	echo "Redes locales."
        fi
	if [ $hora = 10 -o $hora = 11 ]; then
		echo "Sistemas operativos."
	fi
	if [ $hora = 12 ]; then
        	echo "Formacion y orientacion."
	fi
	if [ $hora = 13 ]; then
		echo "Tutoria."
	fi
fi
if [ $diadelasem = miercoles ]; then
        if [ $hora = 8 -o $hora = 9 -o $hora = 10 ]; then
        	echo "Redes locales."
        fi
        if [ $hora = 11 -o $hora = 12 -o $hora = 13 ]; then
        	echo "Aplicaciones ofimaticas."
        fi
fi
if [ $diadelasem = jueves ]; then
        if [ $hora = 8 -o $hora = 9 ]; then
        	echo "Aplicaciones ofimaticas."
        fi
        if [ $hora = 10 -o $hora = 11 ]; then
        	echo "Montaje y mantenimiento."
        fi
        if [ $hora = 12 ]; then
        	echo "Formacion y orientacion."
        fi
        if [ $hora = 13 -o $hora = 14 ]; then
        	echo "Sistemas operativos."
        fi
fi
if [ $diadelasem = viernes ]; then
        if [ $hora = 8 -o $hora = 9 ]; then
        	echo "Montaje y mantenimiento."
        fi
        if [ $hora = 10 -o $hora = 11 ]; then
        	echo "Sistemas operativos."
        fi
        if [ $hora = 12 -o $hora = 13 ]; then
        	echo "Redes locales."
        fi
fi
exit 0
