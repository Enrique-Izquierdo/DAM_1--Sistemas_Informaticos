#!/bin/bash

test=1

while [ $test -eq 1 ];
do
   read -p "Introduce un valor: " v1
   echo $v1 | grep "^[0-9]$"
   test=$?
   if [ $test -eq 1 ]; then
      echo $v1 | grep "^10$"
      test=$?
   fi
  #  La tuveria pasa el valor mostrado por pantalla (echo) al grep, que
  #  muestra en pantalla las lineas que contienen el patron indicado ^[0-1][0-9]$
  #  $? devuelve un 0 cuando el comando previo ha encontrado un resultado (grep
  #  ha encontrado alguna linea coincidente con el patrón), y un 1 cuando
  #  no encuentra ningun resultado.
   if [ $test -eq 1 ]; then
      echo "El valor introducido es incorrecto"
   fi
done

       # Este segundo método solo permite discriminar entre numeros enteros; mientras
       # que el primer método permite discriminar entre cualquier tipo de caracteres.
       #      read -p "Introduce una nota numerica: " v1
       #      while [[ $v1 -gt 10 || $v1 -lt 0 ]]
       #      do
       #         echo "El valor introducido no es valido"
       #         read -p "Introduce una nota numerica: " v1
       #      done
       #      echo "La nota es $v1"


if [ $v1 -ge 9 ]
then
   echo "$v1 es sobresaliente"
else if [ $v1 -ge 7 ]
     then
        echo "$v1 es notable"
     else if [ $v1 -ge 6 ]
          then
             echo "$v1 es bien"
          else if [ $v1 -ge 5 ]
               then      
                  echo "$v1 es suficiente"
               else 
                  echo "$v1 es insuficuente"  
               fi
          fi
     fi
fi

