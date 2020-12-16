#!/bin/bash

test=1

while [ $test -eq 1 ];
do
   read -p "Introduce un numero mayor que 0: " v1
   echo $v1 | grep "^[1-9][0-9]*$"
   test=$?
  #  La tuveria pasa el valor mostrado por pantalla (echo) al grep, que
  #  muestra en pantalla las lineas que contienen el patron indicado ^[0-9]*$
  #  $? devuelve un 0 cuando el comando previo ha encontrado un resultado (grep
  #  ha encontrado alguna linea coincidente con el patrón), y un 1 cuando
  #  no encuentra ningun resultado.
   if [ $test -eq 1 ]; then
      echo "El valor introducido es incorrecto"
   fi
done

       # Este segundo método solo permite discriminar entre numeros enteros; mientras
       # que el primer método permite discriminar entre cualquier tipo de caracteres.
       #     read -p "Introduce un numero mayor que 0: " v1
       #     while [ $v1 -lt 1 ]
       #     do
       #        echo "El valor introducido es incorrecto."
       #        read -p "Introduce un numero mayor que 0: " v1
       #     done

for i in `seq 0 $v1`
do
    echo "$i"
done
