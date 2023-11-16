#!/bin/bash
echo "** Count forward up to 5 **"
for n in $(seq 1 5); do
    echo " * ${n} "
done
echo

echo "** Count down from 5 to 1 **"
for n in $(seq 5 -1 1); do
    echo " * ${n} "
done
echo

echo "** Count from 3 to 3 up to 50 **"
for n in $(seq 1 3 50); do
    echo " * ${n} "
done

exit 0