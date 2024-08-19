#!/bin/sh
echo "Cambiando directorio...."
cd ~/jakarta-tomcat-4.0/bin/
echo "Deteniendo servicio...."
sh shutdown.sh
echo "Servicio detenido...."
sleep 8
