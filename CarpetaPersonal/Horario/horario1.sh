#!/bin/bash

diadelasem=$(date +"%A")
hora=$(date +%H)
min=$(date +%M)

#read -p "1" diadelasem
#read -p "hora" hora
#read -p "min" min

if [ $diadelasem = lunes ]; then
        if [ $hora = 8 -o $hora = 9 ]; then
                echo "Montaje y mantenimiento de equipos."
        fi
        if [ $hora = 10 -a $min -ge 0 -a $min -le 45 ]; then
                echo "Montaje y mantenimiento de equipos."
        fi
        if [ $hora = 10 -a $min -ge 46 -a $min -le 60 ]; then
                echo "Patio."
        fi
        if [ $hora = 11 -a $min -ge 0 -a $min -le 5 ]; then
                echo "Patio."
        fi
        if [ $hora = 11 -a $min -ge 6 -a $min -le 60 ]; then
                echo "Formacion y orientacion."
        fi
        if [ $hora = 12 -a $min -eq 0 ]; then
                echo "Formacion y orientacion."
        fi
        if [ $hora = 12 -a $min -gt 0 ]; then
                echo "Aplicaciones ofimaticas."
        fi
        if [ $hora = 13 -a $min -ge 0 -a $min -le 50 ]; then
                echo "Aplicaciones ofimaticas."
        fi
	if [ $hora = 13 -a $min -ge 51 ]; then
		echo "A casa."
	elif [ $hora -ge 14 ]; then
		echo "A casa."
	fi
fi

if [ $diadelasem = martes ]; then
        if [ $hora = 8  ]; then
                echo "Redes locales."
        fi
        if [ $hora = 9 -a $min -ge 0 -a $min -le 50 ]; then
                echo "Redes locales."
        fi
        if [ $hora = 9 -a $min -ge 50 -a $min -le 60 ]; then
                echo "Sistemas operativos."
        fi
        if [ $hora = 10 -a $min -ge 0 -a $min -le 45 ]; then
                echo "Sistemas operativos."
        fi
        if [ $hora = 10 -a $min -ge 46 -a $min -le 60 ]; then
                echo "Patio."
        fi
        if [ $hora = 11 -a $min -ge 0 -a $min -le 5 ]; then
                echo "Patio."
        fi
        if [ $hora = 11 -a $min -ge 6 -a $min -le 60 ]; then
                echo "Sistemas operativos."
        fi
        if [ $hora = 12 -a $min -eq 0 ]; then
                echo "Sistemas operativos."
        fi
        if [ $hora = 12 -a $min -gt 0 -a $min -le 55 ]; then
                echo "Formacion y orientacion."
        fi
        if [ $hora = 12 -a $min -gt 55 -a $min -le 60 ]; then
                echo "Tutoria."
        fi
        if [ $hora = 13 -a $min -ge 0 -a $min -le 50 ]; then
                echo "Tutoria."
        fi
        if [ $hora = 13 -a $min -ge 51 ]; then
        	echo "A casa."
        elif [ $hora -ge 14 ]; then
        	echo "A casa."
        fi
fi

if [ $diadelasem = miercoles ]; then
        if [ $hora = 8 -o $hora = 9 ]; then
                echo "Redes locales."
        fi
        if [ $hora = 10 -a $min -ge 0 -a $min -le 45 ]; then
                echo "Redes locales."
        fi
        if [ $hora = 10 -a $min -ge 46 -a $min -le 60 ]; then
                echo "Patio."
        fi
        if [ $hora = 11 -a $min -ge 0 -a $min -le 5 ]; then
                echo "Patio."
        fi
        if [ $hora = 11 -a $min -ge 6 -a $min -le 60 ]; then
                echo "Aplicaciones ofimaticas."
        fi
        if [ $hora = 12 ]; then
                echo "Aplicaciones ofimaticas."
        fi
        if [ $hora = 13 -a $min -ge 0 -a $min -le 50 ]; then
                echo "Aplicaciones ofimaticas."
        fi
        if [ $hora = 13 -a $min -ge 51 ]; then
        echo "A casa."
        elif [ $hora -ge 14 ]; then
        echo "A casa."
        fi
fi

if [ $diadelasem = jueves ]; then
        if [ $hora = 8  ]; then
                echo "Aplicaciones ofimaticas."
        fi
        if [ $hora = 9 -a $min -ge 0 -a $min -le 50 ]; then
                echo "Aplicaciones ofimaticas."
        fi
        if [ $hora = 9 -a $min -ge 50 -a $min -le 60 ]; then
                echo "Montaje y mantenimiento de equipos."
        fi
        if [ $hora = 10 -a $min -ge 0 -a $min -le 45 ]; then
                echo "Montaje y mantenimiento de equipos."
        fi
        if [ $hora = 10 -a $min -ge 46 -a $min -le 60 ]; then
                echo "Patio."
        fi
        if [ $hora = 11 -a $min -ge 0 -a $min -le 5 ]; then
                echo "Patio."
        fi
        if [ $hora = 11 -a $min -ge 6 -a $min -le 60 ]; then
                echo "Montaje y mantenimiento de equipos."
        fi
        if [ $hora = 12 -a $min -eq 0 ]; then
                echo "Montaje y mantenimiento de equipos."
        fi
        if [ $hora = 12 -a $min -ge 0 -a $min -le 55 ]; then
                echo "Formacion y orientacion."
        fi
        if [ $hora = 12 -a $min -gt 55 -a $min -le 60 ]; then
                echo "Sistemas operativos."
        fi
        if [ $hora = 13 -a $min -ge 0 -a $min -le 50 ]; then
                echo "Sistemas operativos."
        fi
        if [ $hora = 13 -a $min -ge 51 -a $min -le 60 ]; then
       		echo "Patio."
        fi
	if [ $hora = 14 -a $min -ge 0 -a $min -le 10 ]; then
        	echo "Patio."
        fi
	if [ $hora = 14 -a $min -gt 10 -a $min -le 60 ]; then
		echo "Sistemas operativos."
	fi
	if [ $hora = 15 -a $min -ge 0 -a $min -le 5 ]; then
		echo "Sistemas operativos."
	fi
        if [ $hora = 15 -a $min -ge 6 ]; then
	        echo "A casa."
        elif [ $hora -ge 16 ]; then
        	echo "A casa."
        fi
fi

if [ $diadelasem = viernes ]; then
        if [ $hora = 8  ]; then
                echo "Montaje y mantenimiento de equipos."
        fi
        if [ $hora = 9 -a $min -ge 0 -a $min -le 50 ]; then
                echo "Montaje y montenimiento de equipos."
        fi
        if [ $hora = 9 -a $min -ge 50 -a $min -le 60 ]; then
                echo "Sistemas operativos."
        fi
        if [ $hora = 10 -a $min -ge 0 -a $min -le 45 ]; then
                echo "Sistemas operativos."
        fi
        if [ $hora = 10 -a $min -ge 46 -a $min -le 60 ]; then
                echo "Patio."
        fi
        if [ $hora = 11 -a $min -ge 0 -a $min -le 5 ]; then
                echo "Patio."
        fi
        if [ $hora = 11 -a $min -ge 6 -a $min -le 60 ]; then
                echo "Sistemas operativos."
        fi
        if [ $hora = 12 -a $min -eq 0 ]; then
                echo "Sistemas operativos."
        fi
        if [ $hora = 12 -a $min -gt 0 -a $min -le 55 ]; then
                echo "Redes locales."
        fi
        if [ $hora = 12 -a $min -gt 55 -a $min -le 60 ]; then
                echo "Redes locales."
        fi
        if [ $hora = 13 -a $min -ge 0 -a $min -le 50 ]; then
                echo "Redes locales."
        fi
        if [ $hora = 13 -a $min -ge 51 ]; then
                echo "A casa."
        elif [ $hora -ge 14 ]; then
                echo "A casa."
        fi
fi

if [ $diadelasem = sabado -o $diadelasem = domingo ]; then
	echo "Es finde semana."
fi

exit 0
