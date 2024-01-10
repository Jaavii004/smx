#!/bin/bash

#calendario del horoscopo chino
#calendario chino
read -p "En que año naciste: " calendario

for calen in 2031 2019 2007 1995 1983 1971 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año del cerdo"
    fi
done
for calen in 2020 2008 1996 1984 1972 1960 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año de la rata"
    fi
done
for calen in 2021 2009 1997 1985 1973 1961 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año del buey"
    fi
done
for calen in 2022 2010 1998 1986 1974 1962 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año del tigre"
    fi
done
for calen in 2023 2011 1999 1987 1975 1963 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año del conejo"
    fi
done
for calen in 2024 2012 2000 1988 1976 1964 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año del dragon"
    fi
done
for calen in 2025 2013 2001 1989 1977 1965 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año de la serpiente"
    fi
done
for calen in 2026 2014 2002 1990 1978 1966 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año del caballo"
    fi
done
for calen in 2027 2015 2003 1991 1979 1967 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año de la cabra"
    fi
done
for calen in 2028 2016 2004 1992 1980 1968 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año del mono"
    fi
done
for calen in 2029 2017 2005 1993 1981 1969 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año del gallo"
    fi
done
for calen in 2030 2018 2006 1994 1982 1970 ;do
    if [ $calendario = $calen ]; then
        echo "As nacido en el año del perro"
    fi
done
if [ $calendario -lt 1960 ]; then
    echo "Ese año no lo tengo,lo siento.Solo tengo a partir del 1960."
fi
if [ $calendario -gt 2031 ]; then
    echo "Si que eres joven aun no hemos llegado a ese año"
fi
exit 0
