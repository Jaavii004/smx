#!/bin/bash

for f in $(ls -1 /usr/bin/); do
    if [ -L /usr/bin/$f ]; then
        echo "* Working with : $f -> Est un symbolic link."
    fi
done

exit 0