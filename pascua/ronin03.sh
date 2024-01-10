#!/bin/bash

read -p "Dime un nombre de usuario: " usuario

cat /etc/passwd | grep $usuario*

exit 0
