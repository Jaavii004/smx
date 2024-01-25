#!/bin/bash


if [ -f entrada.txt ]; then
	rm -rf salida.txt
	cat entrada.txt | while read line; do
		((contador++))
		compu=0
		if [ $contador -ne 1 ]; then
			for i in $line; do
				if [ $i -ge "-10000" -a $i -le 10000 ]; then
					((compu++))
					primero=$(echo $line | cut -d " " -f1)
					segundo=$(echo $line | cut -d " " -f2)
				fi
				if [ $compu -eq 2 ]; then
					resta=$(echo $primero" + "$segundo | bc)
					cuenta=$(echo $line | grep -o "-" | wc -l)
					if [ $resta -ge 0 ]; then
						echo "SI" >> salida.txt
					else
						echo "NO" >> salida.txt
					fi
				fi
			done
		fi
	done
fi

exit 0
