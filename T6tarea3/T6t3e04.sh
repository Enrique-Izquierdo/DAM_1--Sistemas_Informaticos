#!/bin/bash

# 1º script funcional. Recorre cada uno de los numeros del archivo mediante
# un for asociado al comando `seq`, y los comandos cat | head | tail.
# El script acumula los numeros en dos arrays: acumulaPar y acumulaImp.
# read -p "Introduce el nombre del archivo que contiene el listado de numeros: " archListado

# numLineas=`cat $archListado | wc -l`
# declare -a acumulaPar
# declare -a acumulaImp
# contPar=0
# contImp=0

# for i in `seq 1 $numLineas`; do
#	numero=`cat $archListado | head -$i | tail -1`
#	if [ $(($numero%2)) -eq 0 ]; then
#		acumulaPar[$contPar]=$numero
#		contPar=$(($contPar+1))
#	else
#                acumulaImp[$contImp]=$numero
#		contImp=$(($contImp+1))
#	fi
# done

# echo "Hay $contPar numeros pares: ${acumulaPar[*]}"
# echo "Hay $contImp numeros impares: ${acumulaImp[*]}"


# 2º script funcional. Recorre cada uno de los numeros del archivo mediante
# el comando for asociado al listado de numeros que se obtiene al acceder
# como valor ($) al contenido del archivo ejecutando un cat; debido a que
# cada linea del archivo contiene unica y exclusivamente un numero.
# El script acumula los numeros en dos arrays: acumulaPar y acumulaImp.
read -p "Introduce el nombre del archivo que contiene el listado de numeros: " archListado

declare -a acumulaPar
declare -a acumulaImp
contPar=0
contImp=0

for i in $(cat $archListado); do
        if [ $(($i%2)) -eq 0 ]; then
                acumulaPar[$contPar]=$i
                contPar=$(($contPar+1))
        else
                acumulaImp[$contImp]=$i
                contImp=$(($contImp+1))
        fi
done

echo "Hay $contPar numeros pares: ${acumulaPar[*]}"
echo "Hay $contImp numeros impares: ${acumulaImp[*]}"

