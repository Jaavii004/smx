#!/bin/bash

for i in $(seq 1 10); do

	let app=($RANDOM%3)+1
	if [ $app -eq 1 ]; then
		sleep 1000 &
	elif [ $app -eq 2 ]; then
		sleep 2000 &
	elif [ $app -eq 3 ]; then
		sleep 3000 &
	else
		echo "Error inesperado."
	fi

done

exit 0
