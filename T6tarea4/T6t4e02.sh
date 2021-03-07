#!/bin/bash

read -p "Teclea un número entre 1 y 100: " numero

for i in `seq 1 10`; do
	echo "$numero x $i = $(($numero*$i))"
done
