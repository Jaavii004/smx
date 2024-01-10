#!/bin/bash
#menos que mil
read -p "Que numero quieres usar: " numero

while [ $numero -le 1000 ]; do
    let numero=numero+123
    if [ $numero -gt 1000 ]; then
	echo "se a tenido que operar "$num" para superar los 1000."
        echo "El primer numero mayor es: "$numero"."
    fi
    ((num ++))
done

exit 0
