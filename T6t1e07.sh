#!/bin/bash

test=1

while [ $test -eq 1 ]
do
   read -p "Introduce un valor entre 1 y 30: " dia
   echo $dia | grep "^[0-9]\{1,2\}$"
   test=$?

   if [ $test -eq 0 ]; then
      if [[ $dia -lt 1 || $dia -gt 30 ]]; then
        test=1
      fi
   fi

   if [ $test -eq 1 ]; then
      echo "Los valores introducidos son incorrectos"
   fi
done

cont=0

while [ true ]; do
   for i in lunes martes miercoles jueves viernes sabado domingo; do
      cont=$((cont+1))
      if  [ $cont = $dia ]; then
         echo "El día es $i"
         exit
      fi
   done
done
