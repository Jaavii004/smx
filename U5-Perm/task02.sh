#!/bin/bash

declare -a carpetas=(./TheTwoTowers/Gandalf-TheGREY ./TheReturnOfTheKing/Gandalf-TheWrite ./TheReturnOfTheKing/TheKingOfAragorn)

if [ -d ${carpetas[0]} ]; then
    ln -s ./TheFellowshipOfTheRing/Gandaf ./TheTwoTowers/Gandalf-TheGREY
else
    echo "Ya existe el enlace simbolico de "${carpetas[0]}
fi

if [ -d ${carpetas[1]} ]; then
    ln -s ./TheFellowshipOfTheRing/Gandaf ./TheReturnOfTheKing/Gandalf-TheWrite
else
    echo "Ya existe el enlace simbolico de "${carpetas[1]}
fi

if [ -d ${carpetas[2]} ]; then
    ln -s ./TheFellowshipOfTheRing/Aragorn ./TheReturnOfTheKing/TheKingOfAragorn
else
    echo "Ya existe el enlace simbolico de "${carpetas[2]}
fi
exit 0
