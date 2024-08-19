#!/bin/sh
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Library General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

##Descomprimir zip 
zips()
{
echo "descomprimiendo zips...."
for archivo in *.zip
do
	na=$archivo
	echo "Descomprimiendo...." $na
	unzip $na
	sleep 2
done
echo
echo "Extraccion completada"
sleep 1
inicio;
}

##descomprimir gzip
gzs()
{
echo "descomprimindo gzips"
for archivo in *.gzip
do
	na=$archivo
	echo "Descomprimiendo...." $na
	gunzip $na
done
echo
echo "Extraccion completada"
sleep 1
inicio;
}
##descomprimir tars
tars()
{
echo "descomprimindo tars"
for archivo in *.tar
do
	na=$archivo
	echo "Descomprimiendo...." $na
	tar -xvf $na
done
echo
echo "Extraccion completada"
sleep 1
inicio;
}
##Descomprimir tar.gz
targzs()
{
echo "descomprimindo targzs"
for archivo in *.tar.gz
do
	na=$archivo
	echo "Descomprimiendo...." $na
	tar -zxvf $na
done
echo
echo "Extraccion completada"
sleep 1
inicio;
}
##Descomprimir bzip2 (*.bz2)
bzip2s()
{
echo "descomprimindo bzip2s"
for archivo in *.tar.gz
do
	na=$archivo
	echo "Descomprimiendo...." $na
	bunzip $na
done
echo
echo "Extraccion completada"
sleep 1
inicio;
}

##Descomprimir tar && bzip2 (*.tar.bz2)
tarbzip2()
{
echo "descomprimindo bzip2s"
for archivo in *.tar.bz2
do
	na=$archivo
	echo "Descomprimiendo...." $na
	tar -jxvf $na
done
echo
echo "Extraccion completada"
sleep 1
inicio;
}
##acerca

sobre()
{
			 clear
           echo "|---------------------------------------------|"
           echo "|          martin@nuclecu.unam.mx             |"
           echo "|                                             |"
           echo "|  Programa para extraer varios archivos      |"
           echo "|                                             |"
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
echo "Shell para extraer varios archivos en un subdirectorio"
echo "-------------------------------------------------"
echo 
echo "Eliga una opcion:"
echo 
echo "1) Descomprimir zips (*.zip)"
echo "2) Descomprimir gzips (*.gzip)"
echo "3) Descomprimir tar (*.tar)"
echo "4) Descomprimir tar.gz (*.tar.gz || *.tgz)"
echo "5) Descomprimir bzip2 (*.bz2)"
echo "6) Descomprimir tar && bzip2 (*.tar.bz2)"
echo "7) Acerca del programa"
echo "8) Salir"
echo
echo -n "Teclee su opcion: "
read opcion
	case $opcion in
		1) zips;;
		2) gzs;;
		3) tars;;
		4) targzs;;
		5) bzip2s;;
		6) tarbzip2;;
		7) sobre;;
		8) exit;;
		*) echo
			echo "|-----------------------------|"
		   echo  "|  Opcion no valida           |"
		   echo  -n "|-----------------------------|"
		   sleep 1
		   inicio;;
	esac
}
inicio;
