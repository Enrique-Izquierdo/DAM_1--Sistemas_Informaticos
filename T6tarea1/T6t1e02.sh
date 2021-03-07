#!/bin/bash

test=1

while [ $test -eq 1 ];
do
   read -p "Introduce un valor: " v1
   echo $v1 | grep "^[0-9]*$"
   test=$?
  #  La tuveria pasa el valor mostrado por pantalla (echo) al grep, que
  #  muestra en pantalla las lineas que contienen el patron indicado ^[0-9]*$.
  #  $? devuelve un 0 cuando el comando previo ha encontrado un resultado (grep
  #  ha encontrado alguna linea coincidente con el patrón), y un 1 cuando
  #  no encuentra ningun resultado.
   if [ $test -eq 1 ]; then
      echo "El valor introducido es incorrecto"
   fi
done

if [ $((v1 % 2)) -eq 0 ]; then
   echo "$v1 es par."
else
   echo "$v1 es impar." 
fi
