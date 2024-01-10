#!/bin/bash
#muestro todas las ips desde la 0.0.0.0 hasta la 255.255.255.255
for primera in $(seq 0 255); do
    for segunda in $(seq 0 255); do
        for tercera in $(seq 0 255); do
            for quarta in $(seq 0 255); do
                echo $primera"."$segunda"."$tercera"."$quarta
            done
        done
    done
done

exit 0


