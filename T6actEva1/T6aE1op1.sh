#!/bin/bash

read -p "Introduce el nombre del usuario: " nombreUsuario

lineas=`cat usuarios.txt | grep "$nombreUsuario"`

# $? --> es igual a 0 cuando la linea de comandos previa se ha 
#        ejecutado de la forma esperada. En el caso del comando
#        grep, encuentra el patron buscado.
# $? --> es igual a 1 cuando la linea de comandos previa NO se ha 
#        ejecutado de la forma esperada. En el caso del comando
#        grep, NO encuentra el patron buscado.

test=$?

if [ $test -eq 1 ]; then
	echo "No se ha logueado"
else
	numLineas=`echo "$lineas" | wc -l`
	echo "$nombreUsuario se ha conectado $numLineas veces"
fi
