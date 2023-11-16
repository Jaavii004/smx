#!/bin/bash
if ! [ "$1" = "" ]; then
    for f in $(ls -1 $HOME); do
        echo "* Working with : ${f}"
    done
else
    echo "** NO HAS PUESTO NINGUN ARGUMENTO **"
fi



exit 0