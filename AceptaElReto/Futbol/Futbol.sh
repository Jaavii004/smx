#!/bin/bash

Iteracion=0
compu=0

if [ -f Entrada.txt ]; then
    while read line ; do
        ((numi++))
        if [ $numi -eq 1 ]; then
			compu=0
			Suma=$(echo $line | tr " " "+")
			let Resulsuma=Suma
			if [ $Resulsuma -eq 10 ]; then
				for i in $line ; do
					((numii++))
					if [ $numii -eq 1 ]; then
						Defensas=$i
					fi
					if [ $numii -eq 2 ]; then
						Centrocampistas=$i
					fi
					if [ $numii -eq 3 ]; then
						Delanteros=$i
					fi
				done
			else
				compu=1
			fi
		fi
		
		if [ $numi -eq 2 ]; then
		    if [ $line -ge 10 -a $line -le 25 ]; then
				NumJugadores=$line
			else
				echo " * Tu numero no es correcto."
				echo " * Aprende un poco mas sobre futbol."
				exit 1
		    fi
		fi
		if [ $numi -eq 3 ]; then
		    DefensasL=$(echo $line | grep -o "F" | wc -l)
		    CentrocampistasL=$(echo $line | grep -o "C" | wc -l)
		    DelanterosL=$(echo $line | grep -o "D" | wc -l)
		fi

        if [ $numi -eq 3 ]; then
            if [ $DefensasL -ge $Defensas ]; then
				((NumCorrecto++))
            fi
            if [ $CentrocampistasL -ge $Centrocampistas ]; then
				((NumCorrecto++))
            fi
            if [ $DelanterosL -ge $Delanteros ]; then
				((NumCorrecto++))
            fi
        fi

        if [ $numi -eq 3 ]; then
            numi=0
            ((Iteracion++))
			if [ $compu -eq 0 ]; then
				echo " * "$Iteracion" Iteraccion"
				echo "  Has eleido "$Defensas" Defensas | Y tienes "$DefensasL
				echo "  Has eleido "$Centrocampistas" Centrocampistas | Y tienes "$CentrocampistasL
				echo "  Has eleido "$Delanteros" Delantero  | Y tienes "$DelanterosL
				if [ $NumCorrecto -eq 3 ]; then
				    echo "  - SI"
				    NumCorrecto=0
				else
				    echo "  - NO"
				    NumCorrecto=0
				fi
                echo
			else
				echo " * "$Iteracion" Iteraccion."
				echo " * Erronea numero diferente a 10."
				echo
			fi
        fi
    done < Entrada.txt
fi

exit 0
