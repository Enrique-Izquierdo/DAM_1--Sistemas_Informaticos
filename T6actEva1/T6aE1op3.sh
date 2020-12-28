#!/bin/bash

# Declaramos el array listaLogueos con la siguiente expresion:
declare -a listaLogueos

echo "Introduce la fecha en dos pasos: primero el dia y despues el mes"
read -p "Introduce el dia: " dia
read -p "Introduce el mes: " mes

numLineas=`cat usuarios.txt | grep "$dia" | grep -i "$mes" | wc -l`

if [ $numLineas -eq 0 ]; then
	echo "No hubo conexiones el $dia de $mes."
else
	for i in `seq 1 $numLineas`; do
		listaLogueos[$(($i-1))]=`cat usuarios.txt | grep "$dia" | grep -i "$mes" | head -$i | tail -1 | awk '{ print $1 }'`

		# La expresion array[posicion], admite en <posicion> los siguientes formas de expresar una variable:
		# i, $i y $(($i-1)).

	done
	echo "El $dia de $mes, se conectaron: ${listaLogueos[*]}."
fi
