#!/bin/bash
# Introducir por parametro el directorio, donde se encuentran ubicados los archivos .txt que debe borrar el script,
# utilizando la siguiente sintaxis: ./nombre_directorio/

totalArchivosTxt=`ls -l $1 | grep ".txt" | wc -l`
rm $1*.txt

echo "Se han borrado $totalArchivosTxt archivo .txt del directorio $1"



