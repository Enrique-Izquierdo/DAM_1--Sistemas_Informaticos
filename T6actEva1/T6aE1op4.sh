#!/bin/bash

read -p "Introduce el nombre de un usuario: " nombreUsuario

numLineasUsuario=`cat usuarios.txt | grep "$nombreUsuario" | wc -l`

if [ $numLineasUsuario -eq 0 ]; then
    echo "No existen registros del usuario $nombreUsuario"
else
    for i in diciembre noviembre octubre septiembre agosto julio junio mayo abril marzo febrero enero; do
        numLineasUsuMes=`cat usuarios.txt | grep "$nombreUsuario" | grep "$i" | wc -l`
        if [ $numLineasUsuMes -ne 0 ]; then
            for j in `seq 31 -1 1`; do
            # Para que el comando <seq> genere una secuencia descendente, debe indicarse que
            # el incremento de la secuencia es negativo <-1>.
                numLineasUsuMesDia=`cat usuarios.txt | grep "$nombreUsuario" | grep "$i" | grep "$j" | wc -l`
                if [ $numLineasUsuMesDia -ne 0 ]; then
                    echo "$nombreUsuario se logueo por ultima vez el $j de $i"
		    exit
                    # El comando <exit> finaliza la ejecución de todas las estructuras repetitivas.
                fi
            done
         fi
    done
fi
