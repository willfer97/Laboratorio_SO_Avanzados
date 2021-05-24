#!/bin/bash

ARCHIVO=""
PERMISOS=""
ABRIR=""

echo -e "\nEscriba el nombre del archivo\n"
read ARCHIVO

if [ -f $ARCHIVO ]
then
    echo -e "\nEl archivo $ARCHIVO ya existe\n"
else
    touch ${ARCHIVO} | echo -e "\nSe ha creado correctamente el archivo $ARCHIVO\n"
fi

echo -e "\n¿Desea agregar o quitar permisos al archivo ${ARCHIVO} con CHMOD?\n\nDIGITE LOS PERMISOS EN NUMEROS (777) O LETRAS (+rwx)\n"
read PERMISOS

if [ -f ${PERMISOS} ]
then
    echo -e "\nNO SE HAN AÑADIDO PERMISO AL ARCHIVO ${ARCHIVO}"
else
    chmod ${PERMISOS} ${ARCHIVO} | echo -e "\nSE HAN AGREGADO LOS PERMISOS AL ARCHIVO ${ARCHIVO} CORRECTAMENTE\n"
fi

#echo - "¿Desea abrir el archivo? si o no"

#read ABRIR

#if [ -f ABRIR=="si" ]
#then
#    emacs ${ARCHIVO}
#elif [ -f ABRIR=="no" ]
#then
#    echo "no abrio"
#fi
