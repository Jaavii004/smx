#!/bin/bash
#me dira en la clase estoy

diadelasem=$(date +"%A")
hora=$(date +%H)
if [ $diadelasem ]
	if
if [ $diadelasem = lunes ]; then
	if [ $hora = 8 -o $hora = 9 -o $hora = 10 ]; then
		echo "Montaje y mantenimiento de equipos."
		echo "La siguiente hora te toca Formacion y orientacion."
	fi
        if [ $hora = 11 ]; then
	        echo "Formacion y orientacion."
		echo "La siquiente hora te toca aplicaciones ofimaticas."
        fi
        if [ $hora = 12 -o $hora = 13 ]; then
	        echo "Aplicaciones ofimaticas."
	        echo "Cuando se acabe la clase te vas a casa."
        fi
fi
if [ $diadelasem = martes ]; then
        if [ $hora = 8 -o $hora = 9 ]; then
        	echo "Redes locales."
	        echo "La siquiente hora te toca sistemas operativos."
        fi
	if [ $hora = 10 -o $hora = 11 ]; then
		echo "Sistemas operativos."
       		echo "La siquiente hora te toca formacion y orientacion."
	fi
	if [ $hora = 12 ]; then
	        echo "Formacion y orientacion."
        	echo "La siquiente hora te toca tutoria."
	fi
	if [ $hora = 13 ]; then
		echo "Tutoria."
	        echo "Cuando se acabe la clase te vas a casa."
	fi
fi
if [ $diadelasem = miercoles ]; then
        if [ $hora = 8 -o $hora = 9 -o $hora = 10 ]; then
        	echo "Redes locales."
	        echo "La siquiente hora te toca aplicaciones ofimaticas."
        fi
        if [ $hora = 11 -o $hora = 12 -o $hora = 13 ]; then
       		echo "Aplicaciones ofimaticas."
        	echo "Cuando se acabe la clase te vas a casa."
        fi
fi
if [ $diadelasem = jueves ]; then
        if [ $hora = 8 -o $hora = 9 ]; then
       		echo "Aplicaciones ofimaticas."
        	echo "La siquiente hora te toca montaje y mantenimiento."
        fi
        if [ $hora = 10 -o $hora = 11 ]; then
        	echo "Montaje y mantenimiento."
        	echo "La siquiente hora te toca formacion y orientacion."
        fi
        if [ $hora = 12 ]; then
        	echo "Formacion y orientacion."
        	echo "La siquiente hora te toca sistemas operativos."
        fi
        if [ $hora = 13 -o $hora = 14 ]; then
   		echo "Sistemas operativos."
        	echo "Cuando se acabe la clase te vas a casa."
        fi
fi
if [ $diadelasem = viernes ]; then
        if [ $hora = 8 -o $hora = 9 ]; then
        	echo "Montaje y mantenimiento."
        	echo "La siquiente hora te toca sistemas operativos."
        fi
        if [ $hora = 10 -o $hora = 11 ]; then
        	echo "Sistemas operativos."
        	echo "La siquiente hora te toca redes locales."
        fi
        if [ $hora = 12 -o $hora = 13 ]; then
        	echo "Redes locales."
        	echo "Cuando se acabe la clase te vas a casa."
        fi
fi
exit 0
