#!/bin/sh
#Variables
PGVERSION=7.3
export PGVERSION
PGDATA=/usr/local/pgsql/data
export PGDATA
#Para iniciar MySQL 
mysql ()
{
	echo "+-------- MYSQL -------+";
	echo "|  ( 1 )  Iniciar ";
	echo "|  ( 2 ) Detener ";
	echo "+-----------+";
	echo "|";
	echo -n "+-->";
	read opcion;
	case $opcion in
		1) 
		echo "Iniciar Servidor MySQL"
		su -c "/usr/sbin/mysqld --user=mysql > /var/log/mysql.log &";
		;;
		2) 
		echo "Detener MySQL"
		su -c "ps -aux | grep mysql | awk '{ print \" kill -9 \" $2 }' |  sh";
	esac

}

#para iniciar Postgres
postgres()
{
	echo "+---- PostgreSQL ------+";
	echo "| ( 1 ) Iniciar";
	echo "| ( 2 ) Detener";
	echo "+---------+";
	echo "|";
	echo -n "+--->";
	read opcion;
	case $opcion in
		1) 
			echo "Iniciar PostgreSQL ";
			su  -l postgres -c "/usr/local/pgsql/bin/postmaster -o -F  -i -S -D $PGDATA";
			ps -aux | grep postmaster | awk '{ print "Nombre: " $1 "No. proceso: " $2 }'
			;;
		2)
			echo "Detener PostgreSQL ";
			su -c "ps -aux | grep postmaster | awk '{ print \" kill -9 \" $2 }' | sh";
			;;
	esac
}


entrada()
{
clear
echo "+-------------------------------+";
echo "|";
echo "| Script para levantar los Servidores de Bases de Datos";
echo "|";
echo "| Seleccione su base de datos";
echo "|";
echo "| ( 1 ) MySQL ";
echo "| ( 2 ) PostgreSQL ";
echo "|"
echo -n "+--> "
read opcion;
case $opcion in
	1)
	mysql;
	;;
	2) 
	postgres;
	;;
esac
}

entrada;
