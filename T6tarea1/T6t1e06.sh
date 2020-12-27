#!/bin/bash

read -p "Introduce los litros consumidos: " vol
coste=0

if [ $vol -le 50 ]; then
   coste=20
else if [ $vol -le 200 ]; then
        coste=20
      #  coste=$((coste+(vol-50)*0.2))
      #    Bash no permite el uso de decimales, para poder utilizarlos
      #    se debe realizar un echo, indicando el numero de decimales y,
      #    posteriormente, pasar el resultado con una tuberio al comando bc. 
        coste=`echo "scale=2; $coste+($vol-50)*0.2" | bc`
     else
        coste=20
      #  coste=`echo "scale=2; $coste+($vol-50)*0.2" | bc`
      #    Bash hace un calculo erroneo cuando se realiza un cálculo
      #    en el que interviene el comando bc, si para ese cálculo
      #    se utiliza una variable deteminada con el comando bc.
        coste=20+30
        coste=`echo "scale=2; $coste+($vol-200)*0.1" | bc`
     fi
fi

echo "El coste de $vol litros de agua es: $coste euros"
