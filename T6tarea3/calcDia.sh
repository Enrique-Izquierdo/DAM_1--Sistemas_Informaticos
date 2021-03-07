#!/bin/bash
contador=0
continuar="si"
while [ $continuar = "si" ]; do
	for i in lunes martes miercoles jueves viernes sabado domingo; do
		contador=$(($contador+1))
		if [ $contador -eq $1 ]; then
			echo "$i, dia $1"
			continuar="no"
		fi
	done
done
