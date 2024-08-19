#!/bin/sh
clear
echo "+---------------------------+";
echo "| (1) Montar  USB removible  |";
echo "| (2) Desmontar USB                |";
echo "| (3) Salida                                 |";
echo "+---------------------------+";
echo "| Eliga opcion                           |";
echo "+---------------------------+";
read opcion
case $opcion in
	1)
	su -c 'mount -t vfat -o uid=500 -o gid=500 -o umask=002 /dev/sdb1 /home/martin/.gnome-desktop/removible/';
	nautilus /home/martin/.gnome-desktop/removible;
	;;
2)
	su -c 'umount /home/martin/.gnome-desktop/removible'
	;;
3)
	exit;;
esac
exit
