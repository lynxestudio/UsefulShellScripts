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


#Menu principal
inicio()
{
	clear;
	echo -e " +=================================+";
	echo -e "  |  Script Easy CDcreador version 1.0";
	echo -e " +=================================+";
	echo -e "  | Inserte un CD reescribible o de lectura en su unidad de CD-ROM";
	echo -e "  |";
	echo -e  " |  Nota: Asegurese de desmontar la unidad, sino lo hace el script no funcionara"
	echo -e  " |  correctamente";
	echo -e  " |";
	echo -e  " | ( 1 ) Borrar un CD reescribible R/W ( necesita privilegios de root )";
	echo -e  " | ( 2 ) Crear imagen ISO de un CD-ROM";
	echo -e  " | ( 3 ) Quemar la imagen ISO a un CD-ROM";
	echo -e  " | ( 4 ) ";
	echo -e  " | ( 5 ) Convertir las canciones de un CD de musica a MP3's";
	echo -e "  | ( 6 ) Salir";
	echo -n " +---------------> ";
	read opcion;
	case $opcion in
		1)
			borrarCD;;
		2)
			quemarISO;;
		3) 
			isoAcdrom;;			
		6) 
			exit ;;
	esac
}


borrarCD()
{
echo " Esta operacion tarda unos segundos por favor espere";
su -c "cdrecord -v -eject dev=0,0,0 blank=fast";
}

isoAcdrom()
{
	echo -n "Dame el nombre del archivo de la imagen ISO a quemar : ";
	read nombre;
	su -c "cdrecord -v speed=8 dev=0,0,0 -data -eject $nombre";
}

quemarISO()
{
	echo -n "Teclee el nombre de la imagen > ";
	read nombre;
	dd if=/dev/cdrom of=$nombre.iso;
	eject;
}

#Aqui se ejecuta el script
inicio;
