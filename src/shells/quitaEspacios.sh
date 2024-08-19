#!/bin/sh
#Un script que reemplaza un caracter en el nombre
#de 1 o varios archivos.

for FILE in `find . -name '*\ *' | grep "\ " `
do
echo "mv -v \""  $FILE "\"" 
done
