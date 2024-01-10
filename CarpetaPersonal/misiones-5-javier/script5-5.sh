#!/bin/bash

#autor=Javier

echo ==============CARPETA_PERSONAL==================
ls ~ |wc -l 

echo =================DESCARGAS======================
ls ~/Descargas |wc -l

echo ===========OCULTOS_CARPETA_PERSONAL=============
ls ~ -a |wc -l


exit 0
