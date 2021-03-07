#!/bin/bash

saldo=100
continuar="true"

read -p "Bienvenido a ComprasMonfort: "

while [ $continuar = "true" ]; do
    read -p "Tiene usted $saldo€ de saldo. Introduzca importe de compra: " importe
    if [ $(($saldo-$importe)) -lt 0 ]; then
        echo "No dispone de tanto saldo."
        echo "Resumen de sus compras: se gasta $((100-$saldo))€; le quedan $saldo€."
        continuar="false"
    else
        saldo=$(($saldo-$importe))
    fi
done
