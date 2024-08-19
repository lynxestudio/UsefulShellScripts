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
##acerca
sobre()
{
			 clear
           echo "|---------------------------------------------|"
           echo "|            martin@nuclecu.unam.mx           |"
           echo "|                                             |"
           echo "|  Cuenta archivos y directorios              | "
           echo "|                                             |"
           echo "|                                             |"
           echo "|     presiona <enter> para continuar...      |"
           echo -n "|---------------------------------------------|"
            read tecla
}


#!/bin/sh
until $op = 3
do
clear
echo `date`
echo "                                        "
echo "                                        "
echo "                                        "
echo " 1) Presentacion                        "
echo " 2) Menu de opciones                    "
echo " 3) Acerca del programa"
echo " 4) Salir del programa                  "
echo 
echo -n " Teclea tu opcion: "                   
read op
case $op in
1) clear
echo "                                        "
echo " Shell :cuenta numero de archivos    "
echo "           y directorios                "
echo "                                        "
echo " Materia: Programacion avanzada         "
echo "                                        "
echo -n " Presiona <ENTER> para regresar.     "
read reg
;;
2) clear
until $op2 = 3
do
clear
echo "                                          "
echo " Menu del programa                       "
echo "                                         "
echo " 1) Instrucciones                        "
echo " 2) Ejecutar el programa                 "
echo " 3) Regresar al menu principal           "
echo "                                         "
echo -n " Teclea una opcion: "
read op2
case $op2 in
1) clear
echo "                                               "
echo "  Este programa devuelve el numero de archivos "
echo "  que se encuentran en un ruta.                "
echo "                                               "
echo "  Al aparecer el menu teclee las opciones      "
echo "  indicadas.                                   "
echo " --------------------------------------------- "
echo -n "  Presiona <ENTER> para regresar               "
read regs
;;
2) clear
echo "                                                  "
echo " Devolvera el numero de directorios y archivos.  "
echo "                                                 "
echo -n "  Teclee la ruta: "
read ruta
echo
#Aqui es el comando que cuenta los archivos y directorios
#El comando ls -l da un listado largo, con el comando y con el comando awk separo los directorios ya que empiezan con la letra d, los archivos empiezan con un -,, y con el comando wc cuento las lineas que se producen de la salida.
ls -l $ruta | awk '/^d/ { print $1 } ' | wc -l | awk '{ print "Se encontraron ",$1," directorios y "}'
ls -l $ruta | awk '/^-/ { print $1 } ' | wc -l | awk '{ print " ",$1," archivos." } '
echo
ls -l $ruta | awk '{ print $1 } ' | wc -l | awk '{ print "Total de archivos encontrados (incluyendo archivos ocultos): ",$1,"."}'
echo
echo "\nPresione <ENTER> para continuar..."
read regs
;;
3)
clear
echo "                                              "
break
;;
*) echo "No valido "
esac
done
;;
3)
	sobre;;
4)
echo " Adios `whoami`"
exit;;
*) echo "\n\n Opcion no valida."
esac
done # Aqui termina el shell

