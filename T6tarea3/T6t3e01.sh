#!/bin/bash
read -p "Indique el fichero con los nombres de los usuarios: " nombres
listado=`cat $nombres`
for i in $listado
do
   mkdir "$i"
   cd ./"$i"
   for j in `seq 1 $1`
   do
      mkdir "$i$j"
   done
   cd ..
done
