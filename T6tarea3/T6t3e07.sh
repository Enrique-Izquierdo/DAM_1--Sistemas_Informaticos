#!/bin/bash
# Introducir por parametro el directorio, donde se encuentran ubicados los archivos .txt
# que debe borrar el script, utilizando la siguiente sintaxis: ./nombre_directorio/


# Este primer script, aunque funciona, devuelve un mensaje no deseado al no poder 
# ejecutarse el comado cd de la segunda linea.

# dirAntes=`pwd`
# cd $1
# dirDespues=`pwd`
# cd ..

# if [ $dirAntes = $dirDespues ]; then
#	echo "No existe el directorio $1"
# else
#	totalArchivosTxt=`ls -l $1 | grep ".txt" | wc -l`
#	rm $1*.txt

#	echo "Se han borrado $totalArchivosTxt archivo .txt del directorio $1"
# fi



# El siguiente scritp  es el mas adecuado.
# La expresion [ -d nombre_directorio ] devuelve true si el directorio existe, y false si no existe.

if [ -d $1 ]; then
        totalArchivosTxt=`ls -l $1 | grep ".txt" | wc -l`
        rm $1*.txt
        echo "Se han borrado $totalArchivosTxt archivo .txt del directorio $1"
else
        echo "No existe el directorio $1"
fi



