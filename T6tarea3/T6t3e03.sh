#!/bin/bash

read -p "Indica el nombre del archivo que contiene los registros: " archRegistros
numRegistros=`cat $archRegistros | wc -l`
contador=0
continuar=true

for i in `seq 1 $numRegistros`; do
	regis=`cat $archRegistros | head -$i | tail -1 | awk '{ print $2 }'`
	if [ $regis -eq 0 ]; then
        	dia=`cat $archRegistros | head -$i | tail -1 | awk '{ print $1 }'`
		echo "el `./calcDia.sh $dia` no llovio"
	fi
done
