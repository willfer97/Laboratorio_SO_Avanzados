#!/bin/bash

USUARIO=""
   
echo -e "\nMENU PRINCIPAL DEL USUARIO\n\n1) Crear Usuario\n2) Crear Contraseña para usuario\n3) Eliminar Usuario\n4) Usuarios creados\n5) SALIR\n"
read USUARIO

#while (test ${USUARIO} -gt 0 && test ${USUARIO} -lt 4)
#do
    case ${USUARIO} in
	1)
	    echo -e "\n\nIngresa el usuario a crear\n"
	    read USUARIO
	    sudo useradd $USUARIO
	    echo -e "\nUsuario ${USUARIO} creado con EXITO\n"
	    ;;
	2)
	    echo -e "\n\nIngrese usuario para crear contraseña\n"
	    read USUARIO
	    sudo passwd $USUARIO
	    ;;
	3)
	    echo -e "\n\nIngrese usuario a eliminar\n"
	    read USUARIO
	    sudo userdel $USUARIO
	    echo -e "\nUsuario ${USUARIO} Eliminado con EXITO\n"
	    ;;
	4)
	    less /etc/passwd
	    ;;
	5)
	    exit
	    ;;
	*)
	    echo -e "\nOpcion invalida\n"
    esac
#done
