#!/bin/bash

read -p "Dime un nombre de usuario: " usuario

cat /etc/passwd | cut -d ":" -f1 | grep -i $usuario

exit 0
