#!/bin/bash

RUTA=""
RUTA2=""

echo -e "Escriba la ruta del archivo que desea mover..."
read RUTA

echo -e "\nEscriba la ruta de destino a donde desea mover el archivo"
read RUTA2

mv ${RUTA} ${RUTA2}

echo "Se ha movido ${RUTA} a ${RUTA2}"
