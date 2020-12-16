#!/bin/bash
read -p "Introduce un valor: " v1
acumulador=0
contador=0
while [ $v1 != 0 ]
do
    acumulador=$((acumulador + v1))
    contador=$((contador + 1))
    read -p "Introduce un valor: " v1
done

medio=$((acumulador/contador))
echo "La suma total es $acumulador"
echo "El valor medio es $medio"
