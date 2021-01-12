#!/bin/bash

echo "Multiplos de 5, entre 5 y 105:" 
for i in `seq 5 105`; do
    if [ $(($i%5)) -eq 0 ]; then
        echo -n " $i,"
    fi
done
echo ""
