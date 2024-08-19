clear
echo "Elija que proceso desea ver"
echo 
echo "1-. Numero de proceso"
echo "2-. Tipo de comando"
echo "3-.Usuario"
read opcion
if [ $opcion = "1"] then
	then
	ps -efa | more | awk '{ print $2 }'
fi
if [ $opcion = "2"] then
ps -fea | more | awk '{ print $8 }'
fi
if [ $opcion = "3"] then
ps -fea | more | awk '{ print $1 }'
fi
