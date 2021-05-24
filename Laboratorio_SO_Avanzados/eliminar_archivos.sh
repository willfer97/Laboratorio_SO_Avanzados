#!/bin/bash

OPCION=""
echo -e "\n¿Qué desea ELIMINAR?\n\n1) Directorios\n2) Archivos\n3) SALIR\n"
read OPCION

case ${OPCION} in

    1) 
	echo -e "\nEscriba el/los nombre/s del/los directorio/s que desea ELIMINAR\n"
	DIRECTORIO=""
	read DIRECTORIO
	rmdir ${DIRECTORIO} | echo -e "\nDirectorio(s) ELIMINADO(s) CORRECTAMENTE\n"
	;;
    2)
	echo -e "\nEscriba el/los nombre(s) del/los archivo(s) que desea ELIMINAR\n"
	ARCHIVO=""
	read ARCHIVO
	rm ${ARCHIVO} | echo -e "\nArchivo(s) ELIMINADO CORRECTAMENTE\n"
	;;
    3)
	exit
	;;
    *)
	echo -e "\nOPCION INVALIDA\n"
	;;
esac
