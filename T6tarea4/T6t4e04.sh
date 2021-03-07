#!/bin/bash

valorBuscado=`echo $((RANDOM%100+1))`
echo "$valorBuscado"

continuar="true"
contador=0
while [ $continuar = "true" ]; do
    read -p "Teclea un número entre 1 y 100: " respuesta
    if [ $respuesta -eq $valorBuscado ]; then
        echo "Has acertado."
        echo "Puntuación: $((100-$contador))"
        continuar="false"
    else if [ $(($respuesta%$valorBuscado)) -eq 0 ]; then
             echo "$respuesta es múltiplo del número buscado";
         else if [ $(($valorBuscado%$respuesta)) -eq 0 ]; then
                  echo "$respuesta es divisor del número buscado"
              else
                  echo "$respuesta no es múltiplo ni divisor del número buscado."
              fi
         fi
    fi
    contador=`expr $contador + 1`
done
