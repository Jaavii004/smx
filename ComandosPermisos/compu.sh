#!/bin/bash

ls -l /usr/bin/ |  while read line ; do
    rc=0
    echo $line | cut -d " " -f1 | grep -q "s" || rc=1
    if [ $rc -eq 0 ]; then
        echo -n "El comando tiene s: "
        echo $line | awk '{print $9}'
    fi
done
total=$(ls -l /usr/bin/ | cut -d " " -f1 | grep -c "s")
echo " El total es "$total





exit 0
