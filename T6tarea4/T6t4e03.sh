#!/bin/bash

read -p "Introduce un número entero: " numero
factorial=1
for i in `seq $numero -1 1`; do
    factorial=$(($factorial*$i))
done

echo "El factorial de $numero es $factorial." 
