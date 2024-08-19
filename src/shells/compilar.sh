#!/bin/sh
#Aqui la ruta1  /home/martin/Documents/programas/omni_final/WEB-INF/classes 
echo "Compilando...."
javac -classpath .:$CLASSPATH /home/martin/Documents/programas/Java/neofitho/neofitho/logon/iglesia/*.java -d $1
echo "Compilando...."
javac -classpath .:$CLASSPATH /home/martin/Documents/programas/Java/neofitho/neofitho/logon/omni/*.java -d $1
echo "Compilando...."
javac -classpath .:$CLASSPATH /home/martin/Documents/programas/Java/neofitho/neofitho/logon/sct/*.java -d $1
echo "Compilando...."
javac -classpath .:$CLASSPATH /home/martin/Documents/programas/Java/neofitho/neofitho/logon/ssp/*.java -d $1
echo "Compilando...."
javac -classpath .:$CLASSPATH /home/martin/Documents/programas/Java/neofitho/neofitho/logon/util/*.java -d $1
echo "Compilando...."
javac -classpath .:$CLASSPATH /home/martin/Documents/programas/Java/neofitho/neofitho/general/sql/*.java -d $1
read
