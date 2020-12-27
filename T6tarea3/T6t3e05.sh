#!/bin/bash
read -p "Introduce el nombre del fichero con el listado de s.o., usuarios y num. procesos: " archListado
lineasLinux=`cat $archListado | grep "Linux" | wc -l`
lineasWindows=`cat $archListado | grep "Windows" | wc -l`
acumulaProcesosLinux=0
acumulaProcesosWindows=0

for i in `seq 1 $lineasLinux`; do
	procesosLinux=`cat $archListado | grep "Linux" | head -$i | tail -1 | awk '{ print $3 }'`
	acumulaProcesosLinux=$(($acumulaProcesosLinux + $procesosLinux))
done

for i in `seq 1 $lineasWindows`; do
	procesosWindows=`cat $archListado | grep "Windows" | head -$i | tail -1 | awk '{ print $3 }'`
	acumulaProcesosWindows=$(($acumulaProcesosWindows + $procesosWindows))
done

echo "Linux, usuarios: $lineasLinux, procesos: $acumulaProcesosLinux"
echo "Windows, usuarios: $lineasWindows, procesos: $acumulaProcesosWindows"

