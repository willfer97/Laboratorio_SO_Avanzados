#!/bin/bash

CARPETA=""
PERMISOS=""

echo -e "\nEscriba el nombre de la carpeta\n"
read CARPETA

if [ -d "$CARPETA" ]
then
    echo -e "\nLa carpeta $CARPETA ya existe\n"
else
    mkdir ${CARPETA} | echo -e "\nSe ha creado correctamente la carpeta ${CARPETA}\n"
fi

echo -e "\n¿Desea agreagar o quitar permisos a la carpeta ${CARPETA} con CHMOD?\n\nDIGITE LOS PERMISOS EN NUMEROS (777) O LETRAS (+x)\n"
read PERMISOS

if [ -f ${PERMISOS} ]
then
    echo -e "\nNO SE HAN AÑADIDO PERMISOS A LA CARPETA ${CARPETA}"
else
    chmod ${PERMISOS} ${CARPETA} | echo -e "\nSE HAN AGREGADO LOS PERMISOS A LA CARPETA ${CARPETA} CORRECTAMENTE\n"
fi
