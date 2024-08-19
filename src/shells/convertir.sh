#!/bin/sh
echo "convirtiendo archivos...."
#aqui solo se cambia la extension a cambiar
for archivo in `ls -F | grep *$`
do
	na=`basename $archivo .bmp`
	echo "convirtiendo archivo: " $archivo
	convert $archivo $na.jpg
done
echo "conversion relizada...."
