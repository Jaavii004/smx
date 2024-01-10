#!/bin/bash
#inicializo las variables
contador=1
repeticiones=1
echo "Estos son los primeros 1000 numeros primos: "
#creo un while con parada en 1000
while [ $repeticiones -le 1000 ]; do
    let divisores=0
    for repe in  $(seq 1 $contador); do
        let resultado=repeticiones%repe
        if [ $resultado -eq 0 ]; then
            let divisores+="1"
        fi
    done
    if [ $divisores -eq 2 ]; then
        echo $contador
    fi
    let contador+="1"
    #cuento las repeticiones para llegar a 1000 y parar
    let repeticiones+="1"
done

exit 0
