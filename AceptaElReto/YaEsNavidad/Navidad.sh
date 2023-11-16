#!/bin/bash

cat entrada | while read line;do
	((linea++))
	if [ $linea -ne 1 ]; then
		incremen=0
		for i in $line; do
		    ((incremen++))
			if [ $incremen -eq 1 ]; then
				Primero=$i
			fi
			if [ $incremen -eq 2 ]; then
				Segundo=$i
			fi
		done
		if [ $Primero -eq 25 -o $Segundo -eq 12 ]; then
			echo "SI"
		else
			echo "No"
		fi
	fi
done

exit 0
