#!/bin/bash
read -p "Introduce el valor 1: " v1
read -p "Introduce el valor 2: " v2
if [ $v1 -eq $v2 ]
then
   echo "Los dos valores son iguales"
else if [ $v1 -gt $v2 ]
     then
	echo "$v1 es el mayor."
     else
	echo "$v2 es el mayor."
     fi
fi
