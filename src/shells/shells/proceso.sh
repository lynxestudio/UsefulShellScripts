clear
echo "Elija una opcion"
echo
echo "1-. ver los usuarios"
echo "2-. ver la terminal"
echo "3-. ver lo que hacen"
read opcion
if [ $opcion = "1" ]
	then
	w | awk '{ print $1 }';;
fi
if [ $opcion = "2" ]
	then
	w | awk '{ print $2 }';;
fi
if [ $opcion = "3" ]
	then
	w | awk '{ print $3 }';;
fi
