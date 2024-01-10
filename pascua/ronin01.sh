#!/bin/bash

read -p "Dime el nombre de usuario: " usuario

cat /etc/passwd | cut -d ":" -f1 | grep $usuario




exit 0
