#!/bin/bash

read -p "Indica el nombre del archivo que contiene los registros: " archRegistros
numRegistros=`cat $archRegistros | wc -l`
acumulador=0

for i in `seq 1 $numRegistros`
do
    regis=`cat $archRegistros | head -$i | tail -1 | awk '{ print $2 }'`
    acumulador=$((acumulador+$regis))
done

echo "La medio de precipitaciones es de $(($acumulador/$numRegistros))"
