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
#######################################################
##Opcion 1
cvbmp2jpg()
{
			for archivo in `ls -F | grep *$`
				do
					na=`basename $archivo .`
					echo "convirtiendo archivo: " $archivo
					convert $archivo $na.jpg
		done
			echo "conversion realizada...."
			sleep 1
		entrada;
}

##Opcion 2
cvgif2jpg()
{
			for archivo in `ls -F | grep *$`
				do
					na=`basename $archivo .`
					echo "convirtiendo archivo: " $archivo
					convert $archivo $na.jpg
		done
			echo "conversion realizada...."
			sleep 1
		entrada;
}

##Opcion 3
cvpng2jpg()
{
			echo
			#echo -n "Tecle el nivel de compresion : "
			#read compresion
			for archivo in `ls -l | awk '/-/ && /.[pPnNgG]$/ { print $9 }' `
				do
					na=`basename $archivo .png`
					echo "convirtiendo archivo: " $archivo
					convert -quality 50 $archivo $na.jpg
		done
			echo "conversion realizada...."
			sleep 1
		entrada;
}

##Opcion 4
cvjpg2png()
{
			for archivo in `ls -l | awk '/-/ && /.[jJpPgG]$/ { print $9 }' `
				do
					na=`basename $archivo .jpg`
					echo "convirtiendo archivo: " $archivo
					convert $archivo $na.png
		done
			echo "conversion realizada...."
			sleep 1
		entrada;
}

##acerca
sobre()
{
			 clear
           echo "|---------------------------------------------|"
           echo "|            martin@nuclecu.unam.mx           |"
           echo "|                                             |"
           echo "|   Convertidor de formatos de imagen         |"
           echo "|                                             |"
           echo "|                                             |"
           echo "|     presiona <enter> para continuar...      |"
           echo -n "|---------------------------------------------|"
            read tecla
			entrada;
}

#opcion 5 hacer los thumbnails
hazThumb(){
			echo
			echo "Teclea el ancho de las mini-imagenes> ";
			read ancho
			echo "Teclea el largo de las mini-imagenes> ";
			read alto
			for archivo in `ls -l | awk '/-/ && /.[gGiIfF]$/ { print $8 }' `
				do
					echo "convirtiendo $ancho X $alto -> archivo:  $archivo"
					convert $archivo -resize $anchox$alto $archivo
		done
			echo "conversion realizada...."
			sleep 1
		entrada;
}

raga(){
	echo "Pulse enter para iniciar"
	read tecla
			for archivo in `ls -F */* | grep *$`
				do
					echo "convirtiendo archivo: "$archivo" -> ../convert/"$archivo
					convert $archivo -rotate 90 ../rotate/$archivo
		done
			echo "conversion realizada...."
			sleep 1
		entrada;
}

mkanim(){
	echo "Pulse enter para continuar";
	read tecla;
	for dire in `echo *`
	do
		echo "convert -delay 20 $dire/*.gif $dire/$dire.gif";
		convert loop -delay 20 $dire/*.gif $dire/$dire.gif
	done
	echo "listo"
}

entrada()
{
clear
echo "-------------------------------------------------"
echo "Shell para convertir formatos de imagenes"
echo "-------------------------------------------------"
echo "Nota: Debe tener instalado el comando"
echo "         convert del paquete ImageMagick"
echo "-------------------------------------------------"
echo "Eliga la conversion para sus archivos   "
echo
echo "1) convertir archivos (.bmp) a (.jpg)"
echo "2) convertir archivos (.gif) a (.jpg)"
echo "3) convertir archivos (.png) a (.jpg)"
echo "4) convertir archivos (.jpg) a (.png)"
echo "5) crear mini-imagenes ";
echo "6) raga";
echo "7) Hacer animaciones";
echo "8) acerca del programa...."
echo "9) Salida"
echo
echo -n "Teclee su opcion: "
read opcion
	case $opcion in
		1) cvbmp2jpg;;
		2) cvgif2jpg;;
		3) cvpng2jpg;;
		4) cvjpg2png;;
		5) hazThumb;;
		6) raga;;
		7) mkanim;;
		8) sobre;;
		9)exit;;
		*) echo
			echo "|-----------------------------|"
		   echo  "|  Opcion no valida           |"
		   echo  -n "|-----------------------------|"
		   sleep 1
		   entrada;;
	esac

}
entrada;
