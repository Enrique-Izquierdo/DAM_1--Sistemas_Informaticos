#!/bin/bash

# Declaramos el array listadoDias mediante la siguiente expresion:
declare -a listadoDias

read -p "Introduce el nombre de un mes: " nombreMes
numLineas=`cat usuarios.txt | grep -i "$nombreMes" | wc -l`

if [ $numLineas -eq 0 ]; then
	echo "$numLineas"
else
	for i in `seq 1 $numLineas`; do
		listadoDias[$(($i-1))]=`cat usuarios.txt | grep -i "$nombreMes" | head -$i | tail -1 | awk '{ print $2 }'`

                # La expresion array[posicion], admite en <posicion> los siguientes formas de expresar una variable:
                # i, $i y $(($i-1)).

	done
	echo "En $nombreMes se conectaron usuarios los días: ${listadoDias[*]}"
fi
