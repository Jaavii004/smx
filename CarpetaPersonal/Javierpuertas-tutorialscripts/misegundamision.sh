#!/bin/bash

#Autor:Javier Puertas
#este es mi segundo script
#dice si el directorio /var/run existe

directorio= ''/var/run''

if [ -d ''$directorio'' ] ; then

    echo ''si existe''

else

    echo ''no se que hacer con mi vida''


fi


exit 0




