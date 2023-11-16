#!/bin/bash

OURDNI=$1
for aux in $(seq 1 100); do
    comprobacion=0
    echo $OURDNI | grep -q $aux || comprobacion=1
    if [ $comprobacion -eq 0 ]; then
        ((++repe))
        echo " * The number : ${aux} is in our DNI number "$repe
        # Fill the gaps
    fi
done

exit 0