#!/bin/sh
may_min()
{
	echo "convirtiendo...."
	for archivo in *
		do
			na=$archivo
			archivoNuevo=`ls $na | tr [A-Z] [a-z]`
			echo "Conviertiendo...$na->$archivoNuevo" 
			echo "mv $na $archivoNuevo" | sh
			sleep 1
		done
	echo
	echo "Cambio realizado"
	sleep 1
inicio;
}

min_may()
{
	echo "convirtiendo...."
	for archivo in *
		do
			na=$archivo
			archivoNuevo=`ls $na | tr [a-z] [A-Z]`
			echo "Conviertiendo...$na->$archivoNuevo" 
			echo "mv $na $archivoNuevo" | sh
			sleep 1
		done
	echo
	echo "Cambio realizado"
	sleep 1
	inicio;
}

##acerca

sobre()
{
			 clear
           echo "|---------------------------------------------|"
           echo "|            martin@nuclecu.unam.mx           |"
           echo "|                                             |"
           echo "|  Programa convertir nombres de archivos     |"
           echo "|  Minusculas a MAYUSCULAS y viceversa        |"
           echo "|                                             |"
           echo "|     presiona <enter> para continuar...      |"
           echo -n "|---------------------------------------------|"
            read tecla
			inicio;
}

##menu principal
inicio()
{
	clear
	echo "-------------------------------------------------"
	echo "Shell para convertir archivos con nombres en MAYUSCULAS"
	echo "a minusculas o viceversa"
	echo "-------------------------------------------------"
	echo 
	echo "Eliga una opcion:"
	echo 
	echo "1) archivos con MAYUSCULAS a minusculas"
	echo "2) archivos con minusculas a MAYUSCULAS"
	echo "3) Acerca"
	echo "4) Salir"
	echo
	echo -n "Teclee su opcion: "
	read opcion
	case $opcion in
		1) may_min;;
		2) min_may;;
		3) sobre;;
		4) exit;;
		*) echo
			echo "|-----------------------------|"
		   echo  "|  Opcion no valida           |"
		   echo  -n "|-----------------------------|"
		   sleep 1
		   inicio;;
	esac
}

inicio;
